import 'package:flutter/cupertino.dart';

class SnippetCupertinoButtonDarkMode extends StatelessWidget {
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
                child: Text('Button'),
                onPressed: () {/** */},
              ),
              CupertinoButton.filled(
                child: Text('Button'),
                onPressed: () {/** */},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
