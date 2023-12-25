import 'package:flutter/material.dart';

class VerticalDividerDemo extends StatelessWidget {
  const VerticalDividerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(child: Text('Item1')),
        VerticalDivider(),
        Container(
          child: Text('Item2'),
        ),
        VerticalDivider(),
        Container(
          child: Text('Item3'),
        ),
      ],
    );
  }
}
