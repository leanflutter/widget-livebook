import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  const CheckboxDemo({super.key});

  @override
  State<CheckboxDemo> createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _value,
      onChanged: (bool? newValue) {
        setState(() {
          _value = newValue ?? false;
        });
      },
    );
  }
}
