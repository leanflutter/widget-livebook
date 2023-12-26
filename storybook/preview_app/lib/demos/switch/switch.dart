import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  const SwitchDemo({super.key});

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _value,
      onChanged: (bool newValue) {
        setState(() {
          _value = newValue;
        });
      },
    );
  }
}
