import 'dart:math' as math;

import '../../includes.dart';

class SliceAnimatedDefaultTextStyle extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceAnimatedDefaultTextStyle';

  @override
  _SliceAnimatedDefaultTextStyleState createState() => _SliceAnimatedDefaultTextStyleState();
}

class _SliceAnimatedDefaultTextStyleState extends State<SliceAnimatedDefaultTextStyle> with SingleTickerProviderStateMixin {
  bool _first = true;

  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: 120,
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 300),
            style: TextStyle(
              fontSize: _fontSize,
              color: _color,
              fontWeight: FontWeight.bold,
            ),
            child: Text('Flutter'),
          ),
        ),
        FlatButton(
          onPressed: () {
            setState(() {
              _fontSize = _first ? 90 : 60;
              _color = _first ? Colors.blue : Colors.red;
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

