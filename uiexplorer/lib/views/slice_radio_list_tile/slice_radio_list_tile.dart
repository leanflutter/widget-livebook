import '../../includes.dart';

enum _SingingCharacter { lafayette, jefferson }

class SliceRadioListTile extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceRadioListTile';

  @override
  _SliceRadioListTileState createState() => _SliceRadioListTileState();
}

class _SliceRadioListTileState extends State<SliceRadioListTile> {
  _SingingCharacter _character = _SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RadioListTile<_SingingCharacter>(
          title: const Text('Lafayette'),
          value: _SingingCharacter.lafayette,
          groupValue: _character,
          onChanged: (_SingingCharacter value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<_SingingCharacter>(
          title: const Text('Thomas Jefferson'),
          value: _SingingCharacter.jefferson,
          groupValue: _character,
          onChanged: (_SingingCharacter value) {
            setState(() {
              _character = value;
            });
          },
        ),
      ],
    );
  }
}
