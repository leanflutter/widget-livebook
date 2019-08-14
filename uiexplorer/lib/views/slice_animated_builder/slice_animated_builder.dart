import 'dart:math' as math;

import '../../includes.dart';

class SliceAnimatedBuilder extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceAnimatedBuilder';

  @override
  _SliceAnimatedBuilderState createState() => _SliceAnimatedBuilderState();
}

class _SliceAnimatedBuilderState extends State<SliceAnimatedBuilder> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: Container(width: 200.0, height: 200.0, color: Colors.green),
      builder: (BuildContext context, Widget child) {
        return Transform.rotate(
          angle: _controller.value * 2.0 * math.pi,
          child: child,
        );
      },
    );
  }
}

