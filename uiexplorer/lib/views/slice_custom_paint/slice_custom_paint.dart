import '../../includes.dart';

class SliceCustomPaint extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceCustomPaint';

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      // painter: Sky(),
      child: Center(
        child: Text(
          'Once upon a time...',
          style: const TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w900,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
