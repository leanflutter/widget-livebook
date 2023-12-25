import 'package:flutter/material.dart';

class GestureDetectorDemo extends StatefulWidget {
  const GestureDetectorDemo({super.key});

  @override
  _GestureDetectorDemoState createState() => _GestureDetectorDemoState();
}

class _GestureDetectorDemoState extends State<GestureDetectorDemo> {
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _lights = true;
        });
      },
      child: Container(
        color: _lights ? Colors.yellow : Colors.grey,
        child: Text('TURN LIGHTS ${_lights ? 'ON' : 'OFF'}'),
      ),
    );
  }
}
