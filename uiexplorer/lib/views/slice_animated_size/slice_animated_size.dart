import '../../includes.dart';

class SliceAnimatedSize extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceAnimatedSize';

  @override
  _SliceAnimatedSizeState createState() => _SliceAnimatedSizeState();
}

class _SliceAnimatedSizeState extends State<SliceAnimatedSize>
  with TickerProviderStateMixin {
  bool _first = true;

  double _width = 200;
  double _height = 200;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 300,
          child: Center(
            child: AnimatedSize(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              child: Container(
                width: _width,
                height: _height,
                color: Colors.blue,
              ),
              vsync: this,
            ),
          ),
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: const Text('CLICK ME!'),
          onPressed: () {
            setState(() {
              _width  = _first ?  220 : 200;
              _height = _first ?  160 : 200;

              _first = !_first;
            });
          },
        ),
      ],
    );
  }
}

