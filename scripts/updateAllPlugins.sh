#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
"$ROOT/scripts/listPlugins.sh" | while read -r plugin; do
  "$ROOT/scripts/updatePlugin.sh" "$plugin"
done
