import '../../includes.dart';

class SliceFloatingActionButton extends StatelessWidget implements SliceExample {
  @override
  String get name => "SliceFloatingActionButton";

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // Add your onPressed code here!
      },
      child: Icon(Icons.thumb_up),
      backgroundColor: Colors.pink,
    );
  }
}
