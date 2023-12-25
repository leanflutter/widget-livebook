import 'package:flutter/material.dart';

class InkWellDemo extends StatefulWidget {
  const InkWellDemo({super.key});

  @override
  _InkWellDemoState createState() => _InkWellDemoState();
}

class _InkWellDemoState extends State<InkWellDemo> {
  double sideLength = 50;

  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        height: sideLength,
        width: sideLength,
        duration: Duration(seconds: 2),
        curve: Curves.easeIn,
        child: Material(
          color: Colors.yellow,
          child: InkWell(
            onTap: () {
              setState(() {
                sideLength == 50 ? sideLength = 100 : sideLength = 50;
              });
            },
          ),
        ),
      ),
    );
  }
}
