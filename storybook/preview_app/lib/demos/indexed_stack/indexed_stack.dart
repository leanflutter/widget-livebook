import 'package:flutter/material.dart';

class IndexedStackDemo extends StatefulWidget {
  const IndexedStackDemo({super.key});

  @override
  State<IndexedStackDemo> createState() => _IndexedStackDemoState();
}

class _IndexedStackDemoState extends State<IndexedStackDemo> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 300,
          child: IndexedStack(
            index: _index,
            children: <Widget>[
              Container(
                color: Colors.pink,
                child: const Center(
                  child: Text('Page 1'),
                ),
              ),
              Container(
                color: Colors.cyan,
                child: const Center(
                  child: Text('Page 2'),
                ),
              ),
              Container(
                color: Colors.deepPurple,
                child: const Center(
                  child: Text('Page 3'),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                if (_index <= 0) return;
                setState(() {
                  _index -= 1;
                });
              },
              child: const Text(
                "Prev",
              ),
            ),
            TextButton(
              onPressed: () {
                if (_index >= 2) return;
                setState(() {
                  _index += 1;
                });
              },
              child: const Text(
                "Next",
              ),
            )
          ],
        )
      ],
    );
  }
}
