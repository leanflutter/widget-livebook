import '../../includes.dart';

class SliceDivider extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceDivider';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          title: Text('Item1')
        ),
        Divider(),
        ListTile(
          title: Text('Item2'),
        ),
        Divider(),
        ListTile(
          title: Text('Item3'),
        ),
      ],
    );
  }
}
