import 'package:flutter/cupertino.dart';

class CupertinoTabBarDarkModeDemo extends StatefulWidget {
  const CupertinoTabBarDarkModeDemo({super.key});

  @override
  State<CupertinoTabBarDarkModeDemo> createState() =>
      _CupertinoTabBarDarkModeDemoState();
}

class _CupertinoTabBarDarkModeDemoState
    extends State<CupertinoTabBarDarkModeDemo> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: CupertinoPageScaffold(
        child: Center(
          child: CupertinoTabBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.circle),
                label: 'Tab 1',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.add),
                label: 'Tab 2',
              ),
            ],
            currentIndex: 1,
          ),
        ),
      ),
    );
  }
}
