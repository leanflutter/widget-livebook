import '../../includes.dart';

export './slice_cupertino_date_picker_dark_mode.dart';

class SliceCupertinoDatePicker extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoDatePicker';

  @override
  State<StatefulWidget> createState() => _SliceCupertinoDatePickerState();
}

class _SliceCupertinoDatePickerState extends State<SliceCupertinoDatePicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.dateAndTime,
        onDateTimeChanged: (dateTime) {

        }
      ),
    );
  }
}
