import '../../includes.dart';

class SliceCupertinoNavigationBarDarkMode extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoNavigationBarDarkMode';

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: CupertinoPageScaffold(
        child: Center(
          child: Container(
            height: kToolbarHeight + (context != null ? MediaQuery.of(context).padding.top : 0),
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
