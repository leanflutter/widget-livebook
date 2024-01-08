import 'package:flutter/material.dart';

class OutlinedButtonDemo extends StatelessWidget {
  const OutlinedButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        /*...*/
      },
      child: const Text(
        'Outline Button',
      ),
    );
  }
}
