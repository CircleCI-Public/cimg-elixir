#!/usr/bin/env bash

vers=()

if [ -f shared/automated-updates.sh ]; then
  source shared/automated-updates.sh
else
  echo "Check if submodule was loaded; automated-updates.sh is missing"
  exit 1
fi

# Keep a record of the min / "max" supported Erlang/OTP versions for each release of Elixir
# e.g. https://hexdocs.pm/elixir/1.17.0/compatibility-and-deprecations.html#between-elixir-and-erlang-otp
declare -A minSupportedErlang
minSupportedErlang["1.17"]="25"
minSupportedErlang["1.16"]="24"
minSupportedErlang["1.15"]="24"
minSupportedErlang["1.14"]="23"

declare -A maxSupportedErlang
maxSupportedErlang["1.17"]="27"
maxSupportedErlang["1.16"]="26"
maxSupportedErlang["1.15"]="26"
maxSupportedErlang["1.14"]="26" # from 1.14.5

# We keep three major Erlang versions at all times and we want to make sure the latest
# version is included, so we source the manifest for the parentTag
source manifest

getElixirVersion() {
  RSS_URL="https://github.com/elixir-lang/elixir/tags.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//')

  # A minor version is released every 6 months, meaning we do not need to concern ourselves
  # with multiple mainline versions like node e.g 16, 18, 19, therefore, we are a bit more
  # confident knowing that the latest version will be the first version parsed

  for version in $VERSIONS; do
    if [[ $version =~ ^v[0-9]+(\.[0-9]+)*$ ]]; then
      generateVersions "$(cut -d 'v' -f2 <<< "${version}")"
      echo $newVersions hi
      generateSearchTerms "ELIXIR_VERSION=" "$majorMinor/${parentTags[2]}/Dockerfile"
      directoryCheck "$majorMinor" "$SEARCH_TERM"

      if [[ $(eval echo $?) == 0 ]]; then

        generateVersionString "$newVersion"
      fi
    fi
  done
}

getElixirVersion

if [ -n "${vers[*]}" ]; then
  echo "Included version updates: ${vers[*]}"
  echo "Running release script"
  ./shared/release.sh "${vers[@]}"
else
  echo "No new version updates"
  exit 0
fi
