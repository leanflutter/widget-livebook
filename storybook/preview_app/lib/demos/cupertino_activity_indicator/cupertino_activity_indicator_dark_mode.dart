import 'package:flutter/cupertino.dart';

class SnippetCupertinoActivityIndicatorDarkMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: CupertinoPageScaffold(
          child: Center(
        child: CupertinoActivityIndicator(
          radius: 32,
        ),
      )),
    );
  }
}
