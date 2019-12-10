import '../../includes.dart';

class SliceText extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceText';

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello, Bob! How are you?',
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
