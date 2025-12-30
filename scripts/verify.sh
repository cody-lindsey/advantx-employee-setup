#!/bin/sh
set -eu

cd "$(dirname "$0")/.."

if [ ! -f "index.html" ]; then
  echo "Missing index.html" >&2
  exit 1
fi

# This repo is browser-delivered. Fail CI on obvious secret artifacts and common token formats.
forbidden_files_regex='(^|/)(\.env(\.|$)|local\.settings\.json|id_rsa(\.|$)|id_ed25519(\.|$)).*|(\.pem$|\.pfx$|\.key$)'
tracked_files="$(git ls-files)"
if echo "$tracked_files" | grep -E "$forbidden_files_regex" >/dev/null 2>&1; then
  echo "Forbidden file(s) tracked in git:" >&2
  echo "$tracked_files" | grep -E "$forbidden_files_regex" >&2
  exit 1
fi

html_files="$(find . -type f -name '*.html' -print)"
if [ -n "$html_files" ] && grep -nE \
  -e 'PRIVATE KEY-----' \
  -e 'DefaultEndpointsProtocol=' \
  -e 'AccountKey=' \
  -e 'SharedAccessKey=' \
  -e 'ghp_' \
  -e 'ghs_' \
  -e 'AIza' \
  -e 'xox[baprs]-' \
  -e 'sk-' \
  $html_files >/dev/null 2>&1; then
  echo "Secret-like pattern detected in HTML. Matches:" >&2
  grep -nE \
    -e 'PRIVATE KEY-----' \
    -e 'DefaultEndpointsProtocol=' \
    -e 'AccountKey=' \
    -e 'SharedAccessKey=' \
    -e 'ghp_' \
    -e 'ghs_' \
    -e 'AIza' \
    -e 'xox[baprs]-' \
    -e 'sk-' \
    $html_files >&2
  exit 1
fi

echo "OK: advantx-employee-setup CI verification passed."
