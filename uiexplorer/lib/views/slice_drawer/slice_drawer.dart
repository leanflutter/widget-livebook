import '../../includes.dart';

class SliceDrawer extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceDrawer';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Sample'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
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
              leading: Icon(Icons.change_history),
              title: Text('Change history'),
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
