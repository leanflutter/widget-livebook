import '../../includes.dart';

class SlicePositioned extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SlicePositioned';

  @override
  _SlicePositionedState createState() => _SlicePositionedState();
}

class _SlicePositionedState extends State<SlicePositioned> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Colors.blue[50],
          height: 300,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 10,
                top: 70,
                right: 10,
                bottom: 70,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

