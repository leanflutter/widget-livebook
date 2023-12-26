import 'package:flutter/material.dart';

class PhysicalModelDemo extends StatefulWidget {
  const PhysicalModelDemo({super.key});

  @override
  State<PhysicalModelDemo> createState() => _PhysicalModelDemoState();
}

class _PhysicalModelDemoState extends State<PhysicalModelDemo> {
  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      elevation: 6.0,
      shape: BoxShape.rectangle,
      shadowColor: Colors.black,
      color: Colors.white,
      child: Container(
        height: 120.0,
        width: 120.0,
        color: Colors.blue[50],
        child: const FlutterLogo(
          size: 60,
        ),
      ),
    );
  }
}
