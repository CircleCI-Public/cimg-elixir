#!/usr/bin/env bash
# Run after shared/gen-dockerfiles.sh; elixirFeed.sh does this automatically. For the versions in GEN-CHECK it:
#   - writes the exact Erlang/OTP release from erlangVersions in the manifest into each parentTag's Dockerfile
#   - drops the Elixir/Erlang pairs that Elixir doesn't support from the Dockerfiles and build/push scripts
#   - points the default tags (e.g. cimg/elixir:1.19) at the newest supported Erlang/OTP when the defaultParentTag isn't
set -eo pipefail

source ./manifest
source ./GEN-CHECK

# Min / max supported Erlang/OTP major versions for each release of Elixir
# e.g. https://hexdocs.pm/elixir/1.20.0/compatibility-and-deprecations.html#between-elixir-and-erlang-otp
erlangSupported() {
  local elixirVersion=$1
  local erlangMajor=${2%%.*}
  local min max

  case $elixirVersion in
    1.20) min=27 max=29 ;;
    1.19) min=26 max=28 ;;
    1.18) min=25 max=28 ;; # initial Erlang/OTP 28 support from 1.18.4
    1.17) min=25 max=27 ;;
    1.16) min=24 max=26 ;;
    1.15) min=24 max=26 ;;
    1.14) min=23 max=26 ;; # from 1.14.5
    *)
      echo "No supported Erlang/OTP versions listed for Elixir $elixirVersion; add them to post-generate.sh" >&2
      exit 1
      ;;
  esac

  [[ $erlangMajor -ge $min && $erlangMajor -le $max ]]
}

# Escape dots so versions can be used in sed / grep patterns
escape() {
  sed 's/\./\\./g' <<< "$1"
}

# sed -i works differently on macOS and Linux, so go through a .bak file
sedInPlace() {
  sed -i.bak "$@"
  rm "${*: -1}.bak"
}

if [[ ${#erlangVersions[@]} -ne ${#parentTags[@]} ]]; then
  echo "erlangVersions needs one entry for each of the parentTags in the manifest" >&2
  exit 1
fi

for i in "${!parentTags[@]}"; do
  if [[ ${erlangVersions[$i]} != "${parentTags[$i]}" && ${erlangVersions[$i]} != "${parentTags[$i]}."* ]]; then
    echo "Erlang/OTP ${erlangVersions[$i]} isn't a patch release of ${parentTags[$i]}" >&2
    exit 1
  fi
done

for version in "${GEN_CHECK[@]}"; do
  fullVersion=${version#v}
  majorMinor=$(cut -d '.' -f1-2 <<< "$fullVersion")
  latestSupported=""

  for i in "${!parentTags[@]}"; do
    if erlangSupported "$majorMinor" "${parentTags[$i]}"; then
      latestSupported=${parentTags[$i]}
      sedInPlace 's/^ENV ERLANG_VERSION=.*/ENV ERLANG_VERSION="'"${erlangVersions[$i]}"'"/' "$majorMinor/${parentTags[$i]}/Dockerfile"
      echo "Elixir $fullVersion uses Erlang/OTP ${erlangVersions[$i]} in $majorMinor/${parentTags[$i]}"
    fi
  done

  if [[ -z $latestSupported ]]; then
    echo "Elixir $fullVersion doesn't support any of the parentTags in the manifest" >&2
    exit 1
  fi

  versionPattern="($(escape "$fullVersion")|$(escape "$majorMinor"))"

  if [[ -n $defaultParentTag ]] && ! erlangSupported "$majorMinor" "$defaultParentTag"; then
    echo "Elixir $fullVersion default tags will use Erlang/OTP $latestSupported instead of $defaultParentTag"
    sedInPlace -E "s/^(docker tag cimg\/elixir:${versionPattern}-erlang-)$(escape "$defaultParentTag")([- ])/\1${latestSupported}\3/" push-images.sh
  fi

  for parentTag in "${parentTags[@]}"; do
    if erlangSupported "$majorMinor" "$parentTag"; then
      continue
    fi

    echo "Dropping Elixir $fullVersion with Erlang/OTP $parentTag; unsupported combination"
    directory="$majorMinor/$parentTag"

    # Leave Dockerfiles that were already committed alone, but don't add new ones
    if git ls-files --error-unmatch "$directory" > /dev/null 2>&1; then
      git checkout -- "$directory"
    else
      rm -rf "$directory"
    fi

    sedInPlace -E "\\|--file $(escape "$directory")/|d" build-images.sh
    sedInPlace -E "/cimg\/elixir:${versionPattern}-erlang-$(escape "$parentTag")(-[a-z]+)?( |$)/d" push-images.sh
  done
done

# Make sure the build/push scripts are still consistent after the edits above
builtTags=$(grep -oE -- '-t [^ ]+' build-images.sh | cut -d ' ' -f2)
taggedTags=$(grep -E '^docker tag ' push-images.sh | awk '{print $4}')
errors=0

while read -r dockerfile; do
  elixirVersion=$(cut -d '/' -f1 <<< "$dockerfile")
  erlangVersion=$(cut -d '/' -f2 <<< "$dockerfile")
  if ! erlangSupported "$elixirVersion" "$erlangVersion"; then
    echo "build-images.sh still builds unsupported $dockerfile" >&2
    errors=1
  fi
done < <(grep -oE -- '--file [^ ]+' build-images.sh | cut -d ' ' -f2)

while read -r tag; do
  if ! grep -qxF "$tag" <<< "$builtTags"; then
    echo "push-images.sh tags $tag, which build-images.sh doesn't build" >&2
    errors=1
  fi
done < <(grep -E '^docker tag ' push-images.sh | awk '{print $3}')

while read -r tag; do
  if ! grep -qxF "$tag" <<< "$builtTags" && ! grep -qxF "$tag" <<< "$taggedTags"; then
    echo "push-images.sh pushes $tag, which is never built or tagged" >&2
    errors=1
  fi
done < <(grep -E '^docker push ' push-images.sh | awk '{print $3}')

exit $errors
