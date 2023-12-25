import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnippetCupertinoNavigationBarDarkMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: CupertinoPageScaffold(
        child: Center(
          child: Container(
            height: kToolbarHeight +
                (context != null ? MediaQuery.of(context).padding.top : 0),
            child: CupertinoNavigationBar(
              leading: CupertinoNavigationBarBackButton(
                previousPageTitle: 'Home',
                onPressed: () {},
              ),
              middle: const Text('CupertinoNavigationBar Sample'),
            ),
          ),
        ),
      ),
    );
  }
}
