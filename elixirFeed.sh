#!/usr/bin/env bash

vers=()

if [ -f shared/automated-updates.sh ]; then
  source shared/automated-updates.sh
else
  echo "Check if submodule was loaded; automated-updates.sh is missing"
  exit 1
fi

# The supported Erlang/OTP versions for each release of Elixir live in post-generate.sh

# We keep three major Erlang versions at all times and we want to make sure the latest
# version is included, so we source the manifest for the parentTag
source manifest

# Not every Elixir version is built against every parentTag, so use the newest
# parentTag that has a Dockerfile for the given Elixir version
latestParentTagDockerfile() {
  local majorMinor=$1
  local dockerfile=""

  for parentTag in "${parentTags[@]}"; do
    if [[ -f "$majorMinor/$parentTag/Dockerfile" ]]; then
      dockerfile="$majorMinor/$parentTag/Dockerfile"
    fi
  done

  echo "$dockerfile"
}

getElixirVersion() {
  RSS_URL="https://github.com/elixir-lang/elixir/tags.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//')
  # VERSIONS=$(cat versions-dummy)
  # A minor version is released every 6 months, meaning we do not need to concern ourselves
  # with multiple mainline versions like node e.g 16, 18, 19, therefore, we are a bit more
  # confident knowing that the latest version will be the first version parsed

  for version in $VERSIONS; do
    if [[ $version =~ ^v[0-9]+(\.[0-9]+)*$ ]]; then
      generateVersions "$(cut -d 'v' -f2 <<< "${version}")"
      echo $newVersion hi
      #This looks for the ELIXIR_VERSION version on the current Dockerfile and export it as SEARCH_TERM
      generateSearchTerms "ELIXIR_VERSION=" "$(latestParentTagDockerfile "$majorMinor")"
      echo "Search term is: $SEARCH_TERM"
      # This compares the version on the Dockerfile with the directory version
      directoryCheck "$majorMinor" "$SEARCH_TERM"

      # This condition only happens when the version in the docker file is less than the version of the loop
      if [[ $(eval echo $?) == 0 ]]; then
        echo "Condition met with $version"
        generateVersionString "$newVersion"
      fi
    fi
  done
}

# Bump each Erlang/OTP version to the newest release of its major version. A new 4th place
# patch (e.g. 28.5.0.8) only updates erlangVersions so it overrides the existing X.X.X directory
# and image tags; anything bigger (e.g. 29.1.3) becomes a new parentTag as well
getErlangVersions() {
  local otpTags latestTag latestVersion erlangVersion newParentTag
  local newParentTags=()
  local newErlangVersions=()
  erlangUpdated=false
  updatedErlangVersions=()

  otpTags=$(git ls-remote --tags --refs https://github.com/erlang/otp 'OTP-*' | sed -E 's#.*refs/tags/OTP-##' | grep -E '^[0-9]+(\.[0-9]+)*$')

  for i in "${!parentTags[@]}"; do
    parentTag=${parentTags[$i]}
    erlangVersion=${erlangVersions[$i]:-$parentTag}
    latestTag=$(grep -E "^${parentTag%%.*}(\.|$)" <<< "$otpTags" | sort -V | tail -n 1)
    latestVersion=$latestTag

    # OTP drops trailing zero segments from its tags (28.5.0 is tagged OTP-28.5), but parentTags always have three or more
    while [[ -n $latestVersion && $(tr -cd '.' <<< "$latestVersion" | wc -c) -lt 2 ]]; do
      latestVersion="$latestVersion.0"
    done

    if [[ -n $latestVersion && $latestVersion != "$erlangVersion" ]] && \
      [[ $(printf '%s\n' "$erlangVersion" "$latestVersion" | sort -V | tail -n 1) == "$latestVersion" ]] && \
      curl -fsLI -o /dev/null "https://github.com/erlang/otp/releases/download/OTP-${latestTag}/otp_src_${latestTag}.tar.gz"; then
      echo "Erlang/OTP $erlangVersion will be updated to $latestVersion"
      newParentTag=$(cut -d '.' -f1-3 <<< "$latestVersion")
      if [[ $newParentTag != "$parentTag" ]]; then
        sed -i "s/^defaultParentTag=${parentTag//./\\.}$/defaultParentTag=${newParentTag}/" manifest
      fi
      newParentTags+=( "$newParentTag" )
      newErlangVersions+=( "$latestVersion" )
      updatedErlangVersions+=( "$latestVersion" )
      erlangUpdated=true
    else
      newParentTags+=( "$parentTag" )
      newErlangVersions+=( "$erlangVersion" )
    fi
  done

  if [[ $erlangUpdated == true ]]; then
    sed -i "s/^parentTags=.*/parentTags=(${newParentTags[*]})/" manifest
    sed -i "s/^erlangVersions=.*/erlangVersions=(${newErlangVersions[*]})/" manifest
  fi
}

# When only Erlang/OTP changes, the current Elixir versions still need to be rebuilt against it
addCurrentElixirVersions() {
  local dockerfile

  for majorMinor in $(ls -d [0-9]*.[0-9]* | sort -rV); do
    if [[ " ${vers[*]} " == *" $majorMinor."* ]]; then
      continue
    fi

    dockerfile=$(latestParentTagDockerfile "$majorMinor")
    if [[ -n $dockerfile ]]; then
      generateSearchTerms "ELIXIR_VERSION=" "$dockerfile"
      echo "Rebuilding Elixir $SEARCH_TERM against the updated Erlang/OTP versions"
      generateVersionString "$SEARCH_TERM"
    fi
  done
}

# Mirrors shared/release.sh, but runs post-generate.sh between generating and committing
release() {
  local versions=("$@")
  local branchName commitMSG defaultBranch

  case ${#versions[@]} in
    1)
      branchName="release-v${versions[0]}"
      commitMSG="Publish v${versions[0]}"
      ;;
    2)
      branchName="release-v${versions[0]}-and-v${versions[1]}"
      commitMSG="Publish v${versions[0]} and v${versions[1]}"
      ;;
    3)
      branchName="release-v${versions[0]}-v${versions[1]}-and-more"
      commitMSG="Publish v${versions[0]}, v${versions[1]}, and v${versions[2]}"
      ;;
    *)
      branchName="release-v${versions[0]}-v${versions[1]}-and-more"
      commitMSG="Pub: v${versions[0]}, v${versions[1]}, v${versions[2]}, and more"
      ;;
  esac

  # Erlang/OTP only releases reuse the Elixir versions, so make the branch name unique to the Erlang/OTP update
  if [[ $erlangUpdated == true ]]; then
    branchName="${branchName}-erlang-$(IFS=-; echo "${updatedErlangVersions[*]}")"
    commitMSG="${commitMSG} with Erlang/OTP $(IFS=,; echo "${updatedErlangVersions[*]}" | sed 's/,/, /g')"
  fi
  commitMSG="${commitMSG}. [release]"

  defaultBranch=$(git remote show origin | grep 'HEAD branch' | cut -d' ' -f5)

  git checkout -b "${branchName}" "${defaultBranch}"
  shared/gen-dockerfiles.sh "${versions[@]}"
  ./post-generate.sh
  git add .
  git commit -m "${commitMSG}"
  git push -u origin "${branchName}"
  gh pr create --title "$commitMSG" --head "$branchName" --body "$commitMSG"
}

getElixirVersion
getErlangVersions

if [[ $erlangUpdated == true ]]; then
  addCurrentElixirVersions
fi

if [ -n "${vers[*]}" ]; then
  echo "Included version updates: ${vers[*]}"
  echo "Running release script"
  release "${vers[@]}"
else
  echo "No new version updates"
  exit 0
fi
