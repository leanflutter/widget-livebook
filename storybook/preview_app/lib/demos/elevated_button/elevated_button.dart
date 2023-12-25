import 'package:flutter/material.dart';

class ElevatedButtonDemo extends StatelessWidget {
  const ElevatedButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ElevatedButton(
          onPressed: null,
          child: Text('Disabled Button', style: TextStyle(fontSize: 20)),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {},
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child:
                const Text('Gradient Button', style: TextStyle(fontSize: 20)),
          ),
        ),
      ],
    );
  }
}
