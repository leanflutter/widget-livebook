import 'package:flutter/cupertino.dart';

class CupertinoSliderDemo extends StatefulWidget {
  const CupertinoSliderDemo({super.key});

  @override
  _CupertinoSliderDemoState createState() => _CupertinoSliderDemoState();
}

class _CupertinoSliderDemoState extends State<CupertinoSliderDemo> {
  double _progress = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoSlider(
      value: _progress,
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
