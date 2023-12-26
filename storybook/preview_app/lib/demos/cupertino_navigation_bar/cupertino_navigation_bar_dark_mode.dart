import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnippetCupertinoNavigationBarDarkMode extends StatelessWidget {
  const SnippetCupertinoNavigationBarDarkMode({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: CupertinoPageScaffold(
        child: Center(
          child: SizedBox(
            height: kToolbarHeight + MediaQuery.of(context).padding.top,
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
