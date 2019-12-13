import '../../includes.dart';

class SliceCupertinoTimerPickerDarkMode extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoTimerPickerDarkMode';

  @override
  State<StatefulWidget> createState() => _SliceCupertinoTimerPickerDarkModeState();
}

class _SliceCupertinoTimerPickerDarkModeState extends State<SliceCupertinoTimerPickerDarkMode> {
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
          child: CupertinoTimerPicker(
            backgroundColor: const CupertinoDynamicColor.withBrightness(
              color: Color(0xFF123456),
              darkColor: Color(0xFF654321),
            ),
            mode: CupertinoTimerPickerMode.hms,
            onTimerDurationChanged: (value) {

            }
          ),
        ),
      )
    );
  }
}
