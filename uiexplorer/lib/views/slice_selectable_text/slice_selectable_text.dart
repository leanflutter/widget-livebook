import '../../includes.dart';

class SliceSelectableText extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceSelectableText';

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      'Hello! How are you?',
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}

