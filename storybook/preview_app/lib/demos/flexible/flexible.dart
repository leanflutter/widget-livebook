import 'package:flutter/material.dart';

class FlexibleDemo extends StatelessWidget {
  const FlexibleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.cyan,
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(
            color: Colors.teal,
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.indigo,
          ),
        ),
      ],
    );
  }
}
