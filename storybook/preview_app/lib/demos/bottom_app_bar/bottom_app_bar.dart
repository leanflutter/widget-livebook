import 'package:flutter/material.dart';

class BottomAppBarDemo extends StatelessWidget {
  const BottomAppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    var bottomAppBarContents = Container(
      child: Text('BottomAppBar'),
    );
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: bottomAppBarContents,
      ),
      floatingActionButton: FloatingActionButton(onPressed: null),
    );
  }
}
