#!/usr/bin/env bash

export LIVEBOOK_UIEXPLORER_HOST=${FLUTTER_WIDGET_LIVEBOOK_UIEXPLORER_HOST}
export LIVEBOOK_UIEXPLORER_USER=${FLUTTER_WIDGET_LIVEBOOK_UIEXPLORER_USER}
export LIVEBOOK_UIEXPLORER_ROOT=${FLUTTER_WIDGET_LIVEBOOK_UIEXPLORER_ROOT}

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
