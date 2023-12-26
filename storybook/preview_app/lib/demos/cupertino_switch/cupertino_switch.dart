import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchDemo extends StatefulWidget {
  const CupertinoSwitchDemo({super.key});

  @override
  State<CupertinoSwitchDemo> createState() => _CupertinoSwitchDemoState();
}

class _CupertinoSwitchDemoState extends State<CupertinoSwitchDemo> {
  bool _lights = true;

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: ListTile(
        title: const Text('Lights'),
        trailing: CupertinoSwitch(
          value: _lights,
          onChanged: (bool value) {
            setState(() {
              _lights = value;
            });
          },
        ),
        onTap: () {
          setState(() {
            _lights = !_lights;
          });
        },
      ),
    );
  }
}
