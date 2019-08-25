import '../../includes.dart';

class SliceAnimatedPositioned extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceAnimatedPositioned';

  @override
  _SliceAnimatedPositionedState createState() => _SliceAnimatedPositionedState();
}

class _SliceAnimatedPositionedState extends State<SliceAnimatedPositioned> {
  bool _first = true;

  double _left = 20;
  double _top = 20;
  double _right = 20;
  double _bottom = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 300,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
                left: _left,
                top: _top,
                right: _right,
                bottom: _bottom,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: const Text('CLICK ME!'),
          onPressed: () {
            setState(() {
              _left   = _first ?  10 : 20;
              _top    = _first ?  70 : 20;
              _right  = _first ?  10 : 20;
              _bottom = _first ?  70 : 20;

              _first = !_first;
            });
          },
        ),
      ],
    );
  }
}

