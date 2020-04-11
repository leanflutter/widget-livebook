#!/usr/bin/env bash

# build uiexplorer
cd uiexplorer
flutter clean
flutter build web
flutter test gendb.dart
mv db.json build/web/assets

# move uiexplorer/build/web to /public/uiexplorer
cd ../
rm -rf public/uiexplorer
cp -R uiexplorer/build/web public/uiexplorer

# deploy to now.sh
now --prod
