import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20.0),
      crossAxisSpacing: 10.0,
      crossAxisCount: 2,
      children: const <Widget>[
        Text('He\'d have you all unravel at the'),
        Text('Heed not the rabble'),
        Text('Sound of screams but the'),
        Text('Who scream'),
        Text('Revolution is coming...'),
        Text('Revolution, they...'),
      ],
    );
  }
}
