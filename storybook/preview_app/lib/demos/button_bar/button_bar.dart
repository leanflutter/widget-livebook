import 'package:flutter/material.dart';

class ButtonBarDemo extends StatelessWidget {
  const ButtonBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      children: <Widget>[
        TextButton(
          child: const Text('Ok'),
          // color: Colors.blue,
          onPressed: () {/** */},
        ),
        TextButton(
          child: const Text('Cancel'),
          // color: Colors.blue,
          onPressed: () {/** */},
        ),
      ],
    );
  }
}
