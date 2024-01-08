import 'package:flutter/cupertino.dart';

class SnippetCupertinoActivityIndicatorDarkMode extends StatelessWidget {
  const SnippetCupertinoActivityIndicatorDarkMode({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: CupertinoPageScaffold(
          child: Center(
        child: CupertinoActivityIndicator(
          radius: 32,
        ),
      ),),
    );
  }
}
