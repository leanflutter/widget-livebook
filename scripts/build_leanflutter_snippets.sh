#!/usr/bin/env bash

# 步骤1：编译示例片段
if [ ! -d "/leanflutter_snippets/" ]; then
    git clone git@github.com:leanflutter/leanflutter_snippets.git
fi

cd leanflutter_snippets
git pull
flutter clean
flutter build web --profile

cd ../
rm -rf public/snippets
cp -R leanflutter_snippets/build/web public/snippets
