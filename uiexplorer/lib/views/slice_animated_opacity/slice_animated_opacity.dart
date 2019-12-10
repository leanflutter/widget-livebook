import '../../includes.dart';

class SliceAnimatedOpacity extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceAnimatedOpacity';

  @override
  _SliceAnimatedOpacityState createState() => _SliceAnimatedOpacityState();
}

class _SliceAnimatedOpacityState extends State<SliceAnimatedOpacity> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 120.0,
          width: 120.0,
          color: Colors.blue[50],
          child: AnimatedOpacity(
            opacity: opacityLevel,
            duration: Duration(seconds: 3),
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
        RaisedButton(
          child: Text('Fade Logo'),
          onPressed: _changeOpacity,
        ),
      ],
    );
  }
}
