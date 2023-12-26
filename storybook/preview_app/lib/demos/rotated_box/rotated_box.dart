import 'package:flutter/material.dart';

class RotatedBoxDemo extends StatelessWidget {
  const RotatedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const RotatedBox(
      quarterTurns: 3,
      child: Text('Hello World!'),
    );
  }
}
