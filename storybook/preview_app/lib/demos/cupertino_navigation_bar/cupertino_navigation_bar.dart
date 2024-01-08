import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

export './cupertino_navigation_bar_dark_mode.dart';

class CupertinoNavigationBarDemo extends StatelessWidget {
  const CupertinoNavigationBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight + (MediaQuery.of(context).padding.top),
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
