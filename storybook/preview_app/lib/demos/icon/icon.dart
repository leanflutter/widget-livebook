import 'package:flutter/material.dart';

class IconDemo extends StatelessWidget {
  const IconDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.add,
      color: Colors.pink,
      size: 30.0,
    );
  }
}
