import '../../includes.dart';

export './slice_cupertino_activity_indicator_dark_mode.dart';

class SliceCupertinoActivityIndicator extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoActivityIndicator';

  @override
  Widget build(BuildContext context) {
    return CupertinoActivityIndicator();
  }
}

