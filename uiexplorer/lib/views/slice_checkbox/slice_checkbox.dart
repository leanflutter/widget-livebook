import '../../includes.dart';

class SliceCheckbox extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceCheckbox';

  @override
  _SliceCheckboxState createState() => _SliceCheckboxState();
}

class _SliceCheckboxState extends State<SliceCheckbox> {
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _value,
      onChanged: (bool newValue) {
        setState(() {
          _value = newValue;
        });
      },
    );
  }
}
