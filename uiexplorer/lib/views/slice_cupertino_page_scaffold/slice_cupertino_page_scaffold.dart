import '../../includes.dart';

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
        backgroundColor: Colors.white,
        leading: CupertinoNavigationBarBackButton(
          color: CupertinoColors.activeBlue,
        ),
        middle: const Text('Sample'),
      ),
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }
}
