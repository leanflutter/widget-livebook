import 'package:flutter/material.dart';

class DividerDemo extends StatelessWidget {
  const DividerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(title: Text('Item1')),
        Divider(),
        ListTile(
          title: Text('Item2'),
        ),
        Divider(),
        ListTile(
          title: Text('Item3'),
        ),
      ],
    );
  }
}
