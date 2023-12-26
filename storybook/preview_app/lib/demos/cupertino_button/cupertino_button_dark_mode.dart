import 'package:flutter/cupertino.dart';

class SnippetCupertinoButtonDarkMode extends StatelessWidget {
  const SnippetCupertinoButtonDarkMode({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: CupertinoPageScaffold(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CupertinoButton(
                child: const Text('Button'),
                onPressed: () {/** */},
              ),
              CupertinoButton.filled(
                child: const Text('Button'),
                onPressed: () {/** */},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
