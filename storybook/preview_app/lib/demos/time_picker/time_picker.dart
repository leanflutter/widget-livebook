import 'package:flutter/material.dart';

class TimePickerDemo extends StatefulWidget {
  const TimePickerDemo({super.key});

  @override
  State<TimePickerDemo> createState() => _TimePickerDemoState();
}

class _TimePickerDemoState extends State<TimePickerDemo> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 1)).then((_) {
      _handleClickMe();
    });
    super.initState();
  }

  Future<void> _handleClickMe() async {
    showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        _handleClickMe();
      },
      child: const Text(
        "CLICK ME!",
      ),
    );
  }
}
