import '../../includes.dart';

export './slice_cupertino_tab_bar_dark_mode.dart';

class SliceCupertinoTabBar extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoTabBar';

  @override
  State<StatefulWidget> createState() => _SliceCupertinoTabBarState();
}

class _SliceCupertinoTabBarState extends State<SliceCupertinoTabBar> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
