import 'package:flutter/material.dart';

class VerticalDividerDemo extends StatelessWidget {
  const VerticalDividerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('Item1'),
        VerticalDivider(),
        Text('Item2'),
        VerticalDivider(),
        Text('Item3'),
      ],
    );
  }
}
