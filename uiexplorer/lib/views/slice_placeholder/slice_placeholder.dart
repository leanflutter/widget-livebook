import '../../includes.dart';

class SlicePlaceholder extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SlicePlaceholder';

  @override
  _SlicePlaceholderState createState() => _SlicePlaceholderState();
}

class _SlicePlaceholderState extends State<SlicePlaceholder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.white,
      child: Placeholder(
        color: Colors.blue[50],
      ),
    );
  }
}

