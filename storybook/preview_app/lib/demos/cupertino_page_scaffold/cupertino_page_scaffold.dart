import 'package:flutter/cupertino.dart';

export './cupertino_page_scaffold_dark_mode.dart';

class CupertinoPageScaffoldDemo extends StatefulWidget {
  const CupertinoPageScaffoldDemo({super.key});

  @override
  _CupertinoPageScaffoldDemoState createState() =>
      _CupertinoPageScaffoldDemoState();
}

class _CupertinoPageScaffoldDemoState
    extends State<CupertinoPageScaffoldDemo> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
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
    );
  }
}
