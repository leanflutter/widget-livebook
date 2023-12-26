import 'package:flutter/material.dart';

class RotationTransitionDemo extends StatefulWidget {
  const RotationTransitionDemo({super.key});

  @override
  State<RotationTransitionDemo> createState() => _RotationTransitionDemoState();
}

class _RotationTransitionDemoState extends State<RotationTransitionDemo>
    with SingleTickerProviderStateMixin {
  final Tween<double> turnsTween = Tween<double>(
    begin: 1,
    end: 3,
  );

  late AnimationController _controller;

  bool _first = true;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RotationTransition(
          turns: turnsTween.animate(_controller),
          child: Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(20),
            child: const FlutterLogo(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () {
            if (_first) {
              _controller.forward();
            } else {
              _controller.reverse();
            }
            _first = !_first;
          },
          child: const Text(
            "CLICK ME!",
          ),
        )
      ],
    );
  }
}
