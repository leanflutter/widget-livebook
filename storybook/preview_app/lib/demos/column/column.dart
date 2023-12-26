import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({super.key});


  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        Text('Deliver features faster'),
        Text('Craft beautiful UIs'),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain, // otherwise the logo will be tiny
            child: FlutterLogo(),
          ),
        ),
      ],
    );
  }
}
