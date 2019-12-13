import '../../includes.dart';

export './slice_cupertino_page_scaffold_dark_mode.dart';

class SliceCupertinoPageScaffold extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoPageScaffold';

  @override
  _SliceCupertinoPageScaffoldState createState() => _SliceCupertinoPageScaffoldState();
}

class _SliceCupertinoPageScaffoldState extends State<SliceCupertinoPageScaffold> {
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
