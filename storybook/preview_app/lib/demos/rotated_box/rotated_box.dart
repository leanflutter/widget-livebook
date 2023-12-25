import 'package:flutter/material.dart';

class RotatedBoxDemo extends StatelessWidget {
  const RotatedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: const Text('Hello World!'),
    );
  }
}
