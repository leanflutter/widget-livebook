import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnippetCupertinoPageScaffoldDarkMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoNavigationBarBackButton(
            previousPageTitle: 'Home',
            onPressed: () {},
          ),
          middle: const Text('Sample'),
        ),
        child: Center(
          child: Text('Hello!'),
        ),
      ),
    );
  }
}
