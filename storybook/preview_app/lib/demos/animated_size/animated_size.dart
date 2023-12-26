import 'package:flutter/material.dart';

class AnimatedSizeDemo extends StatefulWidget {
  const AnimatedSizeDemo({super.key});

  @override
  State<AnimatedSizeDemo> createState() => _AnimatedSizeDemoState();
}

class _AnimatedSizeDemoState extends State<AnimatedSizeDemo>
    with TickerProviderStateMixin {
  bool _first = true;

  double _width = 200;
  double _height = 200;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 300,
          child: Center(
            child: AnimatedSize(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              child: Container(
                width: _width,
                height: _height,
                color: Colors.blue,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          child: const Text('CLICK ME!'),
          onPressed: () {
            setState(() {
              _width = _first ? 220 : 200;
              _height = _first ? 160 : 200;

              _first = !_first;
            });
          },
        ),
      ],
    );
  }
}
