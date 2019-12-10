import '../../includes.dart';

class SliceOverflowBox extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceOverflowBox';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      color: Colors.blue[50],
      child: Align(
        alignment: const Alignment(1.0, 1.0),
        child: SizedBox(
          width: 10.0,
          height: 20.0,
          child: OverflowBox(
            minWidth: 0.0,
            maxWidth: 100.0,
            minHeight: 0.0,
            maxHeight: 50.0,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
