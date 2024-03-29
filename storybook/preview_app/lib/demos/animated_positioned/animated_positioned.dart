import 'package:flutter/material.dart';

class AnimatedPositionedDemo extends StatefulWidget {
  const AnimatedPositionedDemo({super.key});

  @override
  State<AnimatedPositionedDemo> createState() => _AnimatedPositionedDemoState();
}

class _AnimatedPositionedDemoState extends State<AnimatedPositionedDemo> {
  bool _first = true;

  double _left = 20;
  double _top = 20;
  double _right = 20;
  double _bottom = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 300,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
                left: _left,
                top: _top,
                right: _right,
                bottom: _bottom,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          child: const Text('CLICK ME!'),
          onPressed: () {
            setState(() {
              _left = _first ? 10 : 20;
              _top = _first ? 70 : 20;
              _right = _first ? 10 : 20;
              _bottom = _first ? 70 : 20;

              _first = !_first;
            });
          },
        ),
      ],
    );
  }
}
