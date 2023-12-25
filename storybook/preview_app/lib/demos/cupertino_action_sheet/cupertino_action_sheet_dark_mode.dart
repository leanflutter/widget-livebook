import 'package:flutter/cupertino.dart';

class SnippetCupertinoActionSheetDarkMode extends StatefulWidget {
  @override
  _SnippetCupertinoActionSheetDarkModeState createState() =>
      _SnippetCupertinoActionSheetDarkModeState();
}

class _SnippetCupertinoActionSheetDarkModeState
    extends State<SnippetCupertinoActionSheetDarkMode> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: CupertinoPageScaffold(
        child: Center(
          child: CupertinoActionSheet(
            title: Text('Favorite Dessert'),
            message:
                Text('Please select the best dessert from the options below.'),
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: Text('Profiteroles'),
                onPressed: () {/** */},
              ),
              CupertinoActionSheetAction(
                child: Text('Cannolis'),
                onPressed: () {/** */},
              ),
              CupertinoActionSheetAction(
                child: Text('Trifie'),
                onPressed: () {/** */},
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              isDefaultAction: true,
              child: Text('Cancel'),
              onPressed: () {/** */},
            ),
          ),
        ),
      ),
    );
  }
}
