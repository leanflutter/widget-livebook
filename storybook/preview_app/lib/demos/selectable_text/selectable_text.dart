import 'package:flutter/material.dart';

class SelectableTextDemo extends StatelessWidget {
  const SelectableTextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectableText(
      'Hello! How are you?',
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
