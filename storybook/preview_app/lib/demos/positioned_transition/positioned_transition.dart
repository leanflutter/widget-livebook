import 'package:flutter/material.dart';

class PositionedTransitionDemo extends StatefulWidget {
  const PositionedTransitionDemo({super.key});

  @override
  _PositionedTransitionDemoState createState() =>
      _PositionedTransitionDemoState();
}

class _PositionedTransitionDemoState
    extends State<PositionedTransitionDemo>
    with SingleTickerProviderStateMixin {
  final RelativeRectTween relativeRectTween = RelativeRectTween(
    begin: RelativeRect.fromLTRB(40, 40, 0, 0),
    end: RelativeRect.fromLTRB(0, 0, 40, 40),
  );

  late AnimationController _controller;

  bool _first = true;

  initState() {
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
        Container(
          color: Colors.blue[50],
          height: 300,
          child: Stack(
            children: <Widget>[
              PositionedTransition(
                rect: relativeRectTween.animate(_controller),
                child: Container(
                  child: Container(
                    width: 200,
                    height: 200,
                    padding: EdgeInsets.all(20),
                    child: FlutterLogo(),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
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
          child: Text(
            "CLICK ME!",
          ),
        )
      ],
    );
  }
}
