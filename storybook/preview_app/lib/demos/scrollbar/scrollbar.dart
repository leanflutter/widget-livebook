import 'package:flutter/material.dart';

class ScrollbarDemo extends StatelessWidget {
  const ScrollbarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollbar Sample'),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item $index'),
            );
          },
        ),
      ),
    );
  }
}
