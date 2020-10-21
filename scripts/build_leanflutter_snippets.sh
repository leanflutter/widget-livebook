#!/usr/bin/env bash

git pull --recurse-submodules

# 步骤1：编译示例片段
cd leanflutter_snippets
flutter clean
flutter build web --profile

cd ../
rm -rf public/snippets
cp -R leanflutter_snippets/build/web public/snippets
