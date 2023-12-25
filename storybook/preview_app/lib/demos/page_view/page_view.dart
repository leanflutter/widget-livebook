import 'package:flutter/material.dart';

class PageViewDemo extends StatelessWidget {
  const PageViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Container(
          color: Colors.pink,
          child: Center(
            child: Text('Page 1'),
          ),
        ),
        Container(
          color: Colors.cyan,
          child: Center(
            child: Text('Page 2'),
          ),
        ),
        Container(
          color: Colors.deepPurple,
          child: Center(
            child: Text('Page 3'),
          ),
        ),
      ],
    );
  }
}
