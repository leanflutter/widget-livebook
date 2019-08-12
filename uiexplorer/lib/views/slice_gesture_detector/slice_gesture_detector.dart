import '../../includes.dart';

class SliceGestureDetector extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceGestureDetector';

  @override
  _SliceGestureDetectorState createState() => _SliceGestureDetectorState();
}

class _SliceGestureDetectorState extends State<SliceGestureDetector> {
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() { _lights = true; });
      },
      child: Container(
        color: _lights ? Colors.yellow : Colors.grey,
        child: Text('TURN LIGHTS ${_lights ? 'ON' : 'OFF'}'),
      ),
    );
  }
}
