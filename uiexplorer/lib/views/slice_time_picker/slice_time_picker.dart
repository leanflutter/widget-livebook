import '../../includes.dart';

class SliceTimePicker extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceTimePicker';

  @override
  _SliceTimePickerState createState() => _SliceTimePickerState();
}

class _SliceTimePickerState extends State<SliceTimePicker> {

  Future<void> _handleClickMe() async {
    showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        _handleClickMe();
      },
      child: Text(
        "Click me!",
      ),
    );
  }
}
