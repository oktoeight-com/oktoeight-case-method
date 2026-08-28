#!/usr/bin/env bash

set -euo pipefail

forbidden=()

while IFS= read -r -d '' file; do
  case "$file" in
    tasks/* | .agents/* | .codex/* | .paperclip/* | .omp/* | AGENTS.md | CLAUDE.md)
      forbidden+=("$file")
      ;;
  esac
done < <(git ls-files -z)

if ((${#forbidden[@]} > 0)); then
  printf '%s\n' "Private workspace artifacts are tracked:" >&2
  printf -- '- %s\n' "${forbidden[@]}" >&2
  exit 1
fi

printf '%s\n' "No private workspace artifacts are tracked."
