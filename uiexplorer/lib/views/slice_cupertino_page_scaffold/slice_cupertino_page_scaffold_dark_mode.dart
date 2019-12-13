import '../../includes.dart';

class SliceCupertinoPageScaffoldDarkMode extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoPageScaffoldDarkMode';

  @override
  _SliceCupertinoPageScaffoldDarkModeState createState() => _SliceCupertinoPageScaffoldDarkModeState();
}

class _SliceCupertinoPageScaffoldDarkModeState extends State<SliceCupertinoPageScaffoldDarkMode> {
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
