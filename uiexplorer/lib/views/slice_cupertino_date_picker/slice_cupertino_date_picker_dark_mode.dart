import '../../includes.dart';

class SliceCupertinoDatePickerDarkMode extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoDatePickerDarkMode';

  @override
  State<StatefulWidget> createState() => _SliceCupertinoDatePickerDarkModeState();
}

class _SliceCupertinoDatePickerDarkModeState extends State<SliceCupertinoDatePickerDarkMode> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: Container(
        color: Color(0xFF123456),
        alignment: Alignment.center,
        child: SizedBox(
          height: 300,
          child: CupertinoDatePicker(
            backgroundColor: const CupertinoDynamicColor.withBrightness(
              color: Color(0xFF123456),
              darkColor: Color(0xFF654321),
            ),
            mode: CupertinoDatePickerMode.dateAndTime,
            onDateTimeChanged: (dateTime) {

            }
          ),
        ),
      )
    );
  }
}
