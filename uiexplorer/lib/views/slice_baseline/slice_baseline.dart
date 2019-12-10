import '../../includes.dart';

class SliceBaseline extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceBaseline';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        height: 120.0,
        width: 120.0,
        child: Baseline(
          child: Container(
            color: Colors.red,
            height: 60.0,
            width: 60.0,
          ),
          baseline: 20.0,
          baselineType: TextBaseline.alphabetic,
        ),
      ),
    );
  }
}
