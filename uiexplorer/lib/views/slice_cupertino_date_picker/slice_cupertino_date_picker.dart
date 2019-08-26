import '../../includes.dart';

class SliceCupertinoDatePicker extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoDatePicker';

  @override
  State<StatefulWidget> createState() => _SliceCupertinoDatePickerState();
}

class _SliceCupertinoDatePickerState extends State<SliceCupertinoDatePicker> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1)).then((_) {
      _handleClickMe();
    });
    super.initState();
  }

  Future<void> _handleClickMe() async {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 300,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.dateAndTime,
            onDateTimeChanged: (dateTime) {

            }
          ),
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
        "CLICK ME!",
      ),
    );
  }
}
