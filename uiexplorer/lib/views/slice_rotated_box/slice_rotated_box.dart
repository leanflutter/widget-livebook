import '../../includes.dart';

class SliceRotatedBox extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceRotatedBox';

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: const Text('Hello World!'),
    );
  }
}
