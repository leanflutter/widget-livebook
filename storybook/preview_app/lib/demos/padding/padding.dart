import 'package:flutter/material.dart';

class PaddingDemo extends StatelessWidget {
  const PaddingDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(child: Text('Hello World!')),
    );
  }
}
