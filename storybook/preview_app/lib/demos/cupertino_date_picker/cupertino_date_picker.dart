import 'package:flutter/cupertino.dart';

export './cupertino_date_picker_dark_mode.dart';

class CupertinoDatePickerDemo extends StatefulWidget {
  const CupertinoDatePickerDemo({super.key});

  @override
  State<StatefulWidget> createState() => _CupertinoDatePickerDemoState();
}

class _CupertinoDatePickerDemoState
    extends State<CupertinoDatePickerDemo> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: CupertinoDatePicker(
          mode: CupertinoDatePickerMode.dateAndTime,
          onDateTimeChanged: (dateTime) {},),
    );
  }
}
