#!/usr/bin/env bash

# 步骤1：编译示例片段
cd leanflutter_snippets
git pull
flutter clean
flutter build web --profile

cd ../
rm -rf public/snippets
cp -R leanflutter_snippets/build/web public/snippets
