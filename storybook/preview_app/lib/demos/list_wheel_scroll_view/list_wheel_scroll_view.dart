import 'package:flutter/material.dart';

class ListWheelScrollViewDemo extends StatefulWidget {
  const ListWheelScrollViewDemo({super.key});

  @override
  State<ListWheelScrollViewDemo> createState() =>
      _ListWheelScrollViewDemoState();
}

class _ListWheelScrollViewDemoState extends State<ListWheelScrollViewDemo> {
  late List<Widget> outerChildren;

  final List<Widget> innerChildren =
      List<Widget>.generate(10, (int index) => Container());

  late ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Center(
        child: SizedBox(
          height: 500.0,
          width: 300.0,
          child: ListWheelScrollView(
            controller: controller =
                ScrollController(initialScrollOffset: 300.0),
            itemExtent: 100.0,
            children: outerChildren = List<Widget>.generate(10, (int i) {
              return Container(
                color: Colors.blue[500],
                child: Center(
                  child: innerChildren[i] = SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: Text('Item $i'),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
