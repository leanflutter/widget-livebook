#!/usr/bin/env bash

# 步骤1：编译示例片段（第三方小部件）
cd leanflutter_3rd_snippets
git pull
yarn
node ./scripts/build-3rd-package-examples.js

cd ../
rm -rf public/3rd_package_examples
cp -R leanflutter_3rd_snippets/output/3rd_package_examples public/3rd_package_examples
