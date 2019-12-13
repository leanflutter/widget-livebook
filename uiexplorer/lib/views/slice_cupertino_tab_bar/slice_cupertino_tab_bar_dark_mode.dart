import '../../includes.dart';

class SliceCupertinoTabBarDarkMode extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoTabBarDarkMode';

  @override
  State<StatefulWidget> createState() => _SliceCupertinoTabBarDarkModeState();
}

class _SliceCupertinoTabBarDarkModeState extends State<SliceCupertinoTabBarDarkMode> {
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
                title: Text('Tab 1'),
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.add),
                title: Text('Tab 2'),
              ),
            ],
            currentIndex: 1,
          ),
        ),
      )
    );
  }
}
