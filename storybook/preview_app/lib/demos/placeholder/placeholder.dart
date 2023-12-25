import 'package:flutter/material.dart';

class PlaceholderDemo extends StatefulWidget {
  const PlaceholderDemo({super.key});

  @override
  _PlaceholderDemoState createState() => _PlaceholderDemoState();
}

class _PlaceholderDemoState extends State<PlaceholderDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.white,
      child: Placeholder(
        color: Colors.blue.shade50,
      ),
    );
  }
}
