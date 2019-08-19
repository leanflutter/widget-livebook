import '../../includes.dart';

class SliceFlexible extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceFlexible';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 2,
          child: Container(color: Colors.cyan,),
        ),
        Flexible(
          flex: 3,
          child: Container(color: Colors.teal,),
        ),
        Flexible(
          flex: 1,
          child: Container(color: Colors.indigo,),
        ),
      ],
    );
  }
}
