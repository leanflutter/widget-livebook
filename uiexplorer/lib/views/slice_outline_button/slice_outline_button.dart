import '../../includes.dart';

class SliceOutlineButton extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceOutlineButton';

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () {
        /*...*/
      },
      child: Text(
        "Outline Button",
      ),
    );
  }
}
