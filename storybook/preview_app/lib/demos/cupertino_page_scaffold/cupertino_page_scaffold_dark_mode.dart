import 'package:flutter/cupertino.dart';

class SnippetCupertinoPageScaffoldDarkMode extends StatelessWidget {
  const SnippetCupertinoPageScaffoldDarkMode({super.key});

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
        child: const Center(
          child: Text('Hello!'),
        ),
      ),
    );
  }
}
