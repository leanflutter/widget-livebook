import '../../includes.dart';

class SliceOpacity extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceOpacity';

  @override
  _SliceOpacityState createState() => _SliceOpacityState();
}

class _SliceOpacityState extends State<SliceOpacity> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Opacity(
          opacity: _visible ? 1.0 : 0.0,
          child: const Text('Now you see me, now you don\'t!'),
        ),
        FlatButton(
          onPressed: () {
            setState(() {
              _visible = !_visible;
            });
          },
          child: Text(
            "CLICK ME!",
          ),
        )
      ],
    );
  }
}

