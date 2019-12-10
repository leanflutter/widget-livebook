import '../../includes.dart';

class SliceBottomAppBar extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceBottomAppBar';

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
