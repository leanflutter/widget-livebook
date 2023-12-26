import 'package:flutter/material.dart';

enum _SingingCharacter { lafayette, jefferson }

class RadioDemo extends StatefulWidget {
  const RadioDemo({super.key});

  @override
  State<RadioDemo> createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  _SingingCharacter _character = _SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: const Text('Lafayette'),
            leading: Radio(
              value: _SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: (_SingingCharacter? value) {
                setState(() {
                  _character = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Thomas Jefferson'),
            leading: Radio(
              value: _SingingCharacter.jefferson,
              groupValue: _character,
              onChanged: (_SingingCharacter? value) {
                setState(() {
                  _character = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
