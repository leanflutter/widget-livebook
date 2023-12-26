import 'package:flutter/material.dart';

class RangeSliderDemo extends StatefulWidget {
  const RangeSliderDemo({super.key});

  @override
  State<RangeSliderDemo> createState() => _RangeSliderDemoState();
}

class _RangeSliderDemoState extends State<RangeSliderDemo> {
  double _starValue = 10;
  double _endValue = 80;

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: RangeValues(_starValue, _endValue),
      min: 0.0,
      max: 100.0,
      onChanged: (values) {
        setState(() {
          _starValue = values.start.roundToDouble();
          _endValue = values.end.roundToDouble();
        });
      },
    );
  }
}
