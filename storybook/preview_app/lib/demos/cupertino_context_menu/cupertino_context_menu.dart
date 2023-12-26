import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoContextMenuDemo extends StatelessWidget {
  const CupertinoContextMenuDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoContextMenu(
        actions: <Widget>[
          CupertinoContextMenuAction(
            child: const Text('Action one'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoContextMenuAction(
            child: const Text('Action two'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        child: Container(
          width: 100,
          height: 60,
          color: Colors.red,
        ),
      ),
    );
  }
}
