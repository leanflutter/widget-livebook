import '../../includes.dart';

class SliceDefaultTextStyle extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceDefaultTextStyle';

  @override
  _SliceDefaultTextStyleState createState() => _SliceDefaultTextStyleState();
}

class _SliceDefaultTextStyleState extends State<SliceDefaultTextStyle> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: 120,
          child: DefaultTextStyle(
            style: TextStyle(
              fontSize: 60,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            child: Text('Flutter'),
          ),
        ),
      ],
    );
  }
}

