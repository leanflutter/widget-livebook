import '../../includes.dart';

export './slice_cupertino_timer_picker_dark_mode.dart';

class SliceCupertinoTimerPicker extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoTimerPicker';

  @override
  State<StatefulWidget> createState() => _SliceCupertinoTimerPickerState();
}

class _SliceCupertinoTimerPickerState extends State<SliceCupertinoTimerPicker> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: CupertinoTimerPicker(
        mode: CupertinoTimerPickerMode.hms,
        onTimerDurationChanged: (value) {

        }
      ),
    );
  }
}
