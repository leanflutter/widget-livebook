import '../../includes.dart';

class SliceCheckbox extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceCheckbox';

  @override
  Widget build(BuildContext context) {
    bool value = true;
    return Checkbox(
      value: value,
      onChanged: (bool newValue) {
        // setState(() {
        //   value = newValue;
        // });
      },
    );
  }
}
