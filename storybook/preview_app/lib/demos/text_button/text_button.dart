import 'package:flutter/material.dart';

class TextButtonDemo extends StatelessWidget {
  const TextButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text('TextButton'),
      onPressed: () {},
    );
  }
}
