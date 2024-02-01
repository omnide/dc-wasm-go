#!/usr/bin/env bash
set -eEuo pipefail

mkdir -p /tmp/vale
cd /tmp/vale

LOCAL_STYLES="${HOME}/.local/share/vale/styles"
mkdir -p "${LOCAL_STYLES}"

LIB_JSON=https://raw.githubusercontent.com/errata-ai/packages/master/library.json
curl -sSL -o library.json "${LIB_JSON}"
[ -f library.json ] || { echo "Bad fetch of ${LIB_JSON}"; exit 1; }
jq empty library.json || { echo "library.json is bad: $(cat library.json)"; exit 1; }

IFS=$'\n'
for entry in $(jq -r '.[] | tostring' library.json); do
  name=$(jq -r '.name' <<< "${entry}")

  description=$(jq -r '.description' <<< "${entry}")
  echo "Installing ${name} - ${description}"
  url=$(jq -r '.url' <<< "${entry}")
  echo "  url: ${url}"

  curl -sSL -o "${name}.zip" "${url}"
  unzip "${name}.zip"
  mv -f "${name}" "${LOCAL_STYLES}/"
done

rm -rf /tmp/vale