import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

export './cupertino_navigation_bar_dark_mode.dart';

class CupertinoNavigationBarDemo extends StatelessWidget {
  const CupertinoNavigationBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight +
          (context != null ? MediaQuery.of(context).padding.top : 0),
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
