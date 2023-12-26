import 'package:flutter/cupertino.dart';

class SnippetCupertinoAlertDialogDarkMode extends StatefulWidget {
  const SnippetCupertinoAlertDialogDarkMode({super.key});

  @override
  State<StatefulWidget> createState() => _SnippetCupertinoAlertDialogDarkModeState();
}

class _SnippetCupertinoAlertDialogDarkModeState extends State<SnippetCupertinoAlertDialogDarkMode> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: CupertinoPageScaffold(
        child: Center(
          child: CupertinoAlertDialog(
            title: const Text('Allow "Maps" to access your location while you use the app?'),
            content: const Text('Your current location will be displayed on the map and used for directions, nearby search results, and estimated travel times.'),
            actions: <Widget>[
              CupertinoDialogAction(
                child: const Text('Don\'t Allow'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              CupertinoDialogAction(
                child: const Text('Allow'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      )
    );
  }
}
