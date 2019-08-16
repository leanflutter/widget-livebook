import '../../includes.dart';

class SliceSlider extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceSlider';

  @override
  _SliceSliderState createState() => _SliceSliderState();
}

class _SliceSliderState extends State<SliceSlider> {
  double _progress = 0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _progress,
      label: '$_progress',
      min: 0.0,
      max: 100.0,
      onChanged: (value){
        setState(() {
          _progress = value.roundToDouble();
        });
      },
    );
  }
}
