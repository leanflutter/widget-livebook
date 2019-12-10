import '../../includes.dart';

class SliceScaffold extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceScaffold';

  @override
  _SliceScaffoldState createState() => _SliceScaffoldState();
}

class _SliceScaffoldState extends State<SliceScaffold> {
  int _count = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Code'),
      ),
      body: Center(
        child: Text('You have pressed the button $_count times.'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
        }),
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
