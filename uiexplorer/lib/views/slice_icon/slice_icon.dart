import '../../includes.dart';

class SliceIcon extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceIcon';

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.add,
      color: Colors.pink,
      size: 30.0,
    );
  }
}
