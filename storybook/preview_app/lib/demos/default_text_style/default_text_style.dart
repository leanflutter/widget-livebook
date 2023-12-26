import 'package:flutter/material.dart';

class DefaultTextStyleDemo extends StatelessWidget {
  const DefaultTextStyleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 120,
      child: DefaultTextStyle(
        style: TextStyle(
          fontSize: 60,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        child: Text('Flutter'),
      ),
    );
  }
}
