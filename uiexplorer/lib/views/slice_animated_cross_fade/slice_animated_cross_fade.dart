import 'dart:math' as math;

import '../../includes.dart';

class SliceAnimatedCrossFade extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceAnimatedCrossFade';

  @override
  _SliceAnimatedCrossFadeState createState() => _SliceAnimatedCrossFadeState();
}

class _SliceAnimatedCrossFadeState extends State<SliceAnimatedCrossFade> with SingleTickerProviderStateMixin {
  bool _first = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        AnimatedCrossFade(
          duration: const Duration(seconds: 3),
          firstChild: const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100.0),
          secondChild: const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
          crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
        FlatButton(
          onPressed: () {
            setState(() {
              _first = !_first;
            });
          },
          child: Text(
            "CLICK ME!",
          ),
        )
      ],
    );
  }
}

