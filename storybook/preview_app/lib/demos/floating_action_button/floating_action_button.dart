import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  const FloatingActionButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // Add your onPressed code here!
      },
      backgroundColor: Colors.pink,
      child: const Icon(Icons.thumb_up),
    );
  }
}
