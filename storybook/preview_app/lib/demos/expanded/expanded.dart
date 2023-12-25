import 'package:flutter/material.dart';

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.red,
            height: 100,
            width: 100,
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              width: 100,
            ),
          ),
          Container(
            color: Colors.red,
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
