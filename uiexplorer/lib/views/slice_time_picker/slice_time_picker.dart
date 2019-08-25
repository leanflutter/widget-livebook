import '../../includes.dart';

class SliceTimePicker extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceTimePicker';

  @override
  _SliceTimePickerState createState() => _SliceTimePickerState();
}

class _SliceTimePickerState extends State<SliceTimePicker> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1)).then((_) {
      _handleClickMe();
    });
    super.initState();
  }

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
        "CLICK ME!",
      ),
    );
  }
}
