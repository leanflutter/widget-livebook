import 'package:flutter/material.dart';

class ChipDemo extends StatelessWidget {
  const ChipDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        backgroundColor: Colors.grey.shade800,
        child: Text('AB'),
      ),
      label: Text('Aaron Burr'),
    );
  }
}
