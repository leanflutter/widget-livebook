import 'package:flutter/cupertino.dart';

export './cupertino_tab_bar_dark_mode.dart';

class CupertinoTabBarDemo extends StatefulWidget {
  const CupertinoTabBarDemo({super.key});

  @override
  State<CupertinoTabBarDemo> createState() => _CupertinoTabBarDemoState();
}

class _CupertinoTabBarDemoState extends State<CupertinoTabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
