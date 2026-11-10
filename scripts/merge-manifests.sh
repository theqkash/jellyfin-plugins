#!/usr/bin/env bash
# Builds manifest.json from the manifests published by each plugin repository.
# A source that cannot be fetched keeps its entry from the current manifest, so one outage never drops a plugin.
set -euo pipefail
cd "$(dirname "$0")/.."

SOURCES=(
  "https://raw.githubusercontent.com/theqkash/jellyfin-plugin-laurels/main/manifest.json"
  "https://raw.githubusercontent.com/theqkash/jellyfin-plugin-terebi/main/manifest.json"
)

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
[ -f manifest.json ] || echo '[]' > manifest.json

parts=()
for i in "${!SOURCES[@]}"; do
  out="$tmp/$i.json"
  if curl -fsSL --retry 3 "${SOURCES[$i]}" -o "$out" && jq -e 'type == "array"' "$out" > /dev/null; then
    parts+=("$out")
  else
    echo "could not fetch ${SOURCES[$i]}, keeping the current entry" >&2
    name="$(basename "$(dirname "$(dirname "${SOURCES[$i]}")")")"
    jq --arg repo "$name" '[.[] | select(.versions[0].sourceUrl // "" | contains("/" + $repo + "/"))]' manifest.json > "$out"
    parts+=("$out")
  fi
done

# one entry per plugin guid, in the order of SOURCES
jq -s 'add | reduce .[] as $p ([]; if any(.[]; .guid == $p.guid) then . else . + [$p] end)' "${parts[@]}" > "$tmp/manifest.json"
mv "$tmp/manifest.json" manifest.json
jq -r '.[] | "\(.name) \(.versions[0].version // "no version")"' manifest.json
