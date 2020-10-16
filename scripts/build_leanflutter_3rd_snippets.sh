#!/usr/bin/env bash

# 步骤1：编译示例片段（第三方小部件）
if [ ! -d "/leanflutter_3rd_snippets/" ]; then
    git clone git@github.com:leanflutter/leanflutter_3rd_snippets.git
fi

cd leanflutter_3rd_snippets
git pull
flutter clean
flutter build web --profile

cd ../
rm -rf public/3rd_snippets
cp -R leanflutter_3rd_snippets/build/web public/3rd_snippets
