import 'package:flutter/cupertino.dart';

export './cupertino_timer_picker_dark_mode.dart';

class CupertinoTimerPickerDemo extends StatefulWidget {
  const CupertinoTimerPickerDemo({super.key});

  @override
  State<StatefulWidget> createState() => _CupertinoTimerPickerDemoState();
}

class _CupertinoTimerPickerDemoState
    extends State<CupertinoTimerPickerDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: CupertinoTimerPicker(
        mode: CupertinoTimerPickerMode.hms,
        onTimerDurationChanged: (value) {},
      ),
    );
  }
}
