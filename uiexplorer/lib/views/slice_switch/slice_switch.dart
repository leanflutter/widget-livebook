import '../../includes.dart';

class SliceSwitch extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceSwitch';

  @override
  _SliceSwitchState createState() => _SliceSwitchState();
}

class _SliceSwitchState extends State<SliceSwitch> {
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _value,
      onChanged: (bool newValue) {
        setState(() {
          _value = newValue;
        });
      },
    );
  }
}
