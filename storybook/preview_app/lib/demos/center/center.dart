import 'package:flutter/material.dart';

class CenterDemo extends StatelessWidget {
  const CenterDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: 120.0,
      color: Colors.blue[50],
      child: Center(
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
  }
}
