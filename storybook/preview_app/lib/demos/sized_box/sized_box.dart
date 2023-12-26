import 'package:flutter/material.dart';

class SizedBoxDemo extends StatelessWidget {
  const SizedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 200.0,
      height: 300.0,
      child: Card(child: Text('Hello World!')),
    );
  }
}
