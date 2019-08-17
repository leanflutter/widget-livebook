import '../../includes.dart';

class SliceDatePicker extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceDatePicker';

  @override
  _SliceDatePickerState createState() => _SliceDatePickerState();
}

class _SliceDatePickerState extends State<SliceDatePicker> {

  Future<void> _handleClickMe() async {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.dark(),
          child: child,
        );
      },
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
