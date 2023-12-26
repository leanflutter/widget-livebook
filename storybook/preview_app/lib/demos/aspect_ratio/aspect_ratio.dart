import 'package:flutter/material.dart';

class AspectRatioDemo extends StatelessWidget {
  const AspectRatioDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: AspectRatio(
        aspectRatio: 4 / 3,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
