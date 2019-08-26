import '../../includes.dart';

class SliceCupertinoSwitch extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoSwitch';

  @override
  _SliceCupertinoSwitchState createState() => _SliceCupertinoSwitchState();
}

class _SliceCupertinoSwitchState extends State<SliceCupertinoSwitch> {
  bool _lights = true;

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: ListTile(
        title: Text('Lights'),
        trailing: CupertinoSwitch(
          value: _lights,
          onChanged: (bool value) { setState(() { _lights = value; }); },
        ),
        onTap: () { setState(() { _lights = !_lights; }); },
      ),
    );
  }
}
