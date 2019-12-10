import '../../includes.dart';

class SliceVerticalDivider extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceVerticalDivider';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          child: Text('Item1')
        ),
        VerticalDivider(),
        Container(
          child: Text('Item2'),
        ),
        VerticalDivider(),
        Container(
          child: Text('Item3'),
        ),
      ],
    );
  }
}
