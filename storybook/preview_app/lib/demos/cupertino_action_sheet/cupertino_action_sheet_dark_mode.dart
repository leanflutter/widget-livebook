import 'package:flutter/cupertino.dart';

class SnippetCupertinoActionSheetDarkMode extends StatefulWidget {
  const SnippetCupertinoActionSheetDarkMode({super.key});

  @override
  State<SnippetCupertinoActionSheetDarkMode> createState() =>
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
            title: const Text('Favorite Dessert'),
            message: const Text(
                'Please select the best dessert from the options below.'),
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: const Text('Profiteroles'),
                onPressed: () {/** */},
              ),
              CupertinoActionSheetAction(
                child: const Text('Cannolis'),
                onPressed: () {/** */},
              ),
              CupertinoActionSheetAction(
                child: const Text('Trifie'),
                onPressed: () {/** */},
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              isDefaultAction: true,
              child: const Text('Cancel'),
              onPressed: () {/** */},
            ),
          ),
        ),
      ),
    );
  }
}
