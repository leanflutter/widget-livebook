import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  const SliderDemo({super.key});

  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _progress = 0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _progress,
      label: '$_progress',
      min: 0.0,
      max: 100.0,
      onChanged: (value) {
        setState(() {
          _progress = value.roundToDouble();
        });
      },
    );
  }
}
