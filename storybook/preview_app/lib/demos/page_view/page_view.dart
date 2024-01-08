import 'package:flutter/material.dart';

class PageViewDemo extends StatelessWidget {
  const PageViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const <Widget>[
        ColoredBox(
          color: Colors.pink,
          child: Center(
            child: Text('Page 1'),
          ),
        ),
        ColoredBox(
          color: Colors.cyan,
          child: Center(
            child: Text('Page 2'),
          ),
        ),
        ColoredBox(
          color: Colors.deepPurple,
          child: Center(
            child: Text('Page 3'),
          ),
        ),
      ],
    );
  }
}
