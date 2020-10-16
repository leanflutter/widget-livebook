#!/usr/bin/env bash

./scripts/build_leanflutter_snippets.sh
./scripts/build_leanflutter_3rd_snippets.sh

node ./scripts/generate_links.js
node ./scripts/generate_sitemap.js
node ./scripts/prepare.js