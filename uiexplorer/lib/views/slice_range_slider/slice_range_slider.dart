import '../../includes.dart';

class SliceRangeSlider extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceRangeSlider';

  @override
  _SliceRangeSliderState createState() => _SliceRangeSliderState();
}

class _SliceRangeSliderState extends State<SliceRangeSlider> {
  double _starValue = 10;
  double _endValue = 80;

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: RangeValues(_starValue, _endValue),
      min: 0.0,
      max: 100.0,
      onChanged: (values){
        setState(() {
          _starValue = values.start.roundToDouble();
          _endValue = values.end.roundToDouble();
        });
      },
    );
  }
}
