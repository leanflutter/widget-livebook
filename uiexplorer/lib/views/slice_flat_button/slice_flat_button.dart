import '../../includes.dart';

class SliceFlatButton extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceFlatButton';

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        /*...*/
      },
      child: Text(
        "Flat Button",
      ),
    );
  }
}
