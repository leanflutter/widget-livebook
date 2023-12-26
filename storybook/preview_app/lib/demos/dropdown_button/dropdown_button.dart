import 'package:flutter/material.dart';

class DropdownButtonDemo extends StatefulWidget {
  const DropdownButtonDemo({super.key});

  @override
  State<DropdownButtonDemo> createState() => _DropdownButtonDemoState();
}

class _DropdownButtonDemoState extends State<DropdownButtonDemo> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['One', 'Two', 'Free', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
