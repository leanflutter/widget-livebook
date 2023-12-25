import 'package:flutter/material.dart';

class IconButtonDemo extends StatefulWidget {
  const IconButtonDemo({super.key});

  @override
  _IconButtonDemoState createState() => _IconButtonDemoState();
}

class _IconButtonDemoState extends State<IconButtonDemo> {
  double _volume = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.volume_up),
              tooltip: 'Increase volume by 10',
              onPressed: () {
                setState(() {
                  _volume += 10;
                });
              },
            ),
            Text('Volume : $_volume')
          ],
        ),
      ),
    );
  }
}
