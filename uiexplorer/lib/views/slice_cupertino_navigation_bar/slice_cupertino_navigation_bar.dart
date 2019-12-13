import '../../includes.dart';

export './slice_cupertino_navigation_bar_dark_mode.dart';

class SliceCupertinoNavigationBar extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoNavigationBar';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight + (context != null ? MediaQuery.of(context).padding.top : 0),
      child: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          previousPageTitle: 'Home',
          onPressed: () {},
        ),
        middle: const Text('CupertinoNavigationBar Sample'),
      ),
    );
  }
}
