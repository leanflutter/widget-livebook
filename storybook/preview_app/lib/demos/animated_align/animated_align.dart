import 'package:flutter/material.dart';

class AnimatedAlignDemo extends StatefulWidget {
  const AnimatedAlignDemo({super.key});

  @override
  State<AnimatedAlignDemo> createState() => _AnimatedAlignDemoState();
}

class _AnimatedAlignDemoState extends State<AnimatedAlignDemo> {
  AlignmentGeometry _alignment = Alignment.topRight;

  void _changeAlignment() {
    setState(() {
      _alignment = _alignment == Alignment.topRight
          ? Alignment.bottomLeft
          : Alignment.topRight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: 120.0,
          width: 120.0,
          color: Colors.blue[50],
          child: AnimatedAlign(
            alignment: _alignment,
            curve: Curves.ease,
            duration: const Duration(seconds: 3),
            child: const FlutterLogo(
              size: 60,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            _changeAlignment();
          },
          child: const Text(
            "CLICK ME!",
          ),
        )
      ],
    );
  }
}
