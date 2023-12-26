import 'package:flutter/material.dart';

class AnimatedPaddingDemo extends StatefulWidget {
  const AnimatedPaddingDemo({super.key});

  @override
  State<AnimatedPaddingDemo> createState() => _AnimatedPaddingDemoState();
}

class _AnimatedPaddingDemoState extends State<AnimatedPaddingDemo> {
  EdgeInsets _padding = EdgeInsets.zero;
  void _changePadding() {
    setState(() {
      if (_padding.top == 100) {
        _padding = const EdgeInsets.only(top: 100, bottom: 100);
      } else {
        _padding = const EdgeInsets.only(left: 100, right: 100);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: 300.0,
          width: 300.0,
          child: AnimatedPadding(
            padding: _padding,
            curve: Curves.ease,
            duration: const Duration(seconds: 1),
            child: Container(
              color: Colors.blue,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            _changePadding();
          },
          child: const Text(
            "CLICK ME!",
          ),
        )
      ],
    );
  }
}
