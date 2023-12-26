import 'package:flutter/material.dart';

enum _SingingCharacter { lafayette, jefferson }

class RadioListTileDemo extends StatefulWidget {
  const RadioListTileDemo({super.key});

  @override
  State<RadioListTileDemo> createState() => _RadioListTileDemoState();
}

class _RadioListTileDemoState extends State<RadioListTileDemo> {
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
          onChanged: (_SingingCharacter? value) {
            setState(() {
              _character = value!;
            });
          },
        ),
        RadioListTile<_SingingCharacter>(
          title: const Text('Thomas Jefferson'),
          value: _SingingCharacter.jefferson,
          groupValue: _character,
          onChanged: (_SingingCharacter? value) {
            setState(() {
              _character = value!;
            });
          },
        ),
      ],
    );
  }
}
