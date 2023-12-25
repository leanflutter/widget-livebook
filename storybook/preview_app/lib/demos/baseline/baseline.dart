import 'package:flutter/material.dart';

class BaselineDemo extends StatelessWidget {
  const BaselineDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        height: 120.0,
        width: 120.0,
        child: Baseline(
          child: Container(
            color: Colors.red,
            height: 60.0,
            width: 60.0,
          ),
          baseline: 20.0,
          baselineType: TextBaseline.alphabetic,
        ),
      ),
    );
  }
}
