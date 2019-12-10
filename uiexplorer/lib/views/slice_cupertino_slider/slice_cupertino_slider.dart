import '../../includes.dart';

class SliceCupertinoSlider extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoSlider';

  @override
  _SliceCupertinoSliderState createState() => _SliceCupertinoSliderState();
}

class _SliceCupertinoSliderState extends State<SliceCupertinoSlider> {
  double _progress = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoSlider(
      value: _progress,
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
