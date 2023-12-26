import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Sample'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Center(
                child: SizedBox(
                  width: 60.0,
                  height: 60.0,
                  child: CircleAvatar(
                    child: FlutterLogo(),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.change_history),
              title: const Text('Change history'),
              onTap: () {
                // change app state...
                Navigator.pop(context); // close the drawer
              },
            )
          ],
        ),
      ),
    );
  }
}
