import '../../includes.dart';

class SliceButtonBar extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceButtonBar';

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      children: <Widget>[
        FlatButton(
          child: Text('Ok'),
          color: Colors.blue,
          onPressed: () {/** */},
        ),
        FlatButton(
          child: Text('Cancel'),
          color: Colors.blue,
          onPressed: () {/** */},
        ),
      ],
    );
  }
}
