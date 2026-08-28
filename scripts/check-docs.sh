#!/usr/bin/env bash
set -euo pipefail

cd "$(git rev-parse --show-toplevel)"

failures=0

fail() {
  printf 'ERROR: %s\n' "$1" >&2
  failures=$((failures + 1))
}

require_file() {
  if [[ ! -f "$1" ]]; then
    fail "Required file is missing: $1"
  fi
}

require_text() {
  if ! grep -Fq -- "$2" "$1"; then
    fail "$1 must contain: $2"
  fi
}

required_files=(
  README.md
  CONTRIBUTING.md
  CHANGELOG.md
  LICENSE
  MAINTAINERS.md
  .github/CODEOWNERS
  .github/ISSUE_TEMPLATE/editorial-defect.yml
  .github/ISSUE_TEMPLATE/method-proposal.yml
  .github/pull_request_template.md
  .github/workflows/documentation.yml
)

for file in "${required_files[@]}"; do
  require_file "$file"
done

mapfile -t markdown_files < <(git ls-files '*.md' ':!tasks/**')

for file in "${markdown_files[@]}"; do
  if grep -n $'\t' "$file" >/dev/null; then
    fail "$file contains a tab character."
  fi
  if grep -nE '[[:blank:]]+$' "$file" >/dev/null; then
    fail "$file contains trailing whitespace."
  fi
  if [[ -s "$file" ]] && [[ $(tail -c 1 "$file" | wc -l) -eq 0 ]]; then
    fail "$file must end with a newline."
  fi
  h1_count=$(grep -c '^# ' "$file" || true)
  if [[ "$h1_count" -ne 1 ]]; then
    fail "$file must contain exactly one level-one heading."
  fi
done

require_text README.md '# The CASE Method'
require_text README.md '## Core Philosophy'
require_text README.md '## Why CASE?'
require_text README.md '## The CASE Framework'
require_text README.md '## Operating Logic'
require_text README.md '## Data Structure'
require_text README.md '## Implementation'
require_text README.md '## Common Questions'
require_text README.md '### Constrained Action'
require_text README.md 'CASE refusal: Action does not show preparation within the asker'"'"'s control.'
require_text README.md 'https://github.com/oktoeight-com/oktoeight-core-method'
require_text README.md 'https://github.com/oktoeight-com/oktoeight-fast-method'
require_text README.md 'https://github.com/oktoeight-com/oktoeight-company-philosophy'

require_text CHANGELOG.md '## [Unreleased]'
require_text CHANGELOG.md '[Unreleased]: https://github.com/oktoeight-com/oktoeight-case-method/compare/v0.2.0...HEAD'
require_text CHANGELOG.md '[0.2.0]: https://github.com/oktoeight-com/oktoeight-case-method/compare/v0.1.0...v0.2.0'
require_text CHANGELOG.md '[0.1.0]: https://github.com/oktoeight-com/oktoeight-case-method/releases/tag/v0.1.0'

require_text MAINTAINERS.md 'Methods & Documentation Maintainer'
require_text MAINTAINERS.md 'Chief of Staff'
require_text .github/CODEOWNERS '@jorgenbruntveit'

for form in .github/ISSUE_TEMPLATE/editorial-defect.yml .github/ISSUE_TEMPLATE/method-proposal.yml; do
  require_text "$form" 'id: work-class'
  require_text "$form" 'id: validation'
  require_text "$form" 'id: approval'
done

require_text .github/pull_request_template.md '## Work class'
require_text .github/pull_request_template.md '## Validation'
require_text .github/pull_request_template.md '## Approval'

while IFS= read -r match; do
  source_file=${match%%:*}
  target=${match#*:}
  target=${target%%#*}
  target=${target%%\?*}
  [[ -z "$target" ]] && continue
  case "$target" in
    http://*|https://*|mailto:*|\#*) continue ;;
  esac
  source_dir=$(dirname "$source_file")
  if [[ ! -e "$source_dir/$target" ]]; then
    fail "$source_file links to missing local target: $target"
  fi
done < <(perl -ne 'while (/!?\[[^]]*\]\(([^) ]+)(?:\s+"[^"]*")?\)/g) { print "$ARGV:$1\n" }' "${markdown_files[@]}")

if [[ "${CHECK_EXTERNAL_LINKS:-0}" == "1" ]]; then
  mapfile -t external_links < <(perl -ne 'while (/!?\[[^]]*\]\((https?:\/\/[^) ]+)/g) { print "$1\n" } if (/^\[[^]]+\]:\s+(https?:\/\/\S+)/) { print "$1\n" }' "${markdown_files[@]}" | sort -u)
  for url in "${external_links[@]}"; do
    if ! curl --location --fail --silent --show-error --retry 2 --connect-timeout 10 --max-time 30 --output /dev/null "$url"; then
      fail "External link failed: $url"
    fi
  done
fi

if [[ "$failures" -ne 0 ]]; then
  printf '%s documentation check(s) failed.\n' "$failures" >&2
  exit 1
fi

printf 'Documentation checks passed.\n'
