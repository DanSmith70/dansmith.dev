#!/usr/bin/env bash

set -euo pipefail

project_name="dansmith-dev"
deploy_dir="$(mktemp -d "${TMPDIR:-/tmp}/dansmith-pages.XXXXXX")"

cleanup() {
  rm -rf "$deploy_dir"
}

trap cleanup EXIT

cp index.html styles.css _worker.js "$deploy_dir/"
cp -R assets "$deploy_dir/assets"
find "$deploy_dir" -name ".DS_Store" -delete

npx wrangler@latest pages deploy "$deploy_dir" \
  --project-name "$project_name" \
  --branch main
