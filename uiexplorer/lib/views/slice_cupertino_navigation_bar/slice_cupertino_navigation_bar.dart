import '../../includes.dart';

class SliceCupertinoNavigationBar extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoNavigationBar';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight + (context != null ? MediaQuery.of(context).padding.top : 0),
      child: CupertinoNavigationBar(
        backgroundColor: Colors.white,
        leading: CupertinoNavigationBarBackButton(),
        middle: const Text('CupertinoNavigationBar Sample'),
      ),
    );
  }
}
