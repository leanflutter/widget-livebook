import '../../includes.dart';

class SliceInkWell extends StatefulWidget implements SliceExample {
  @override
  String get name => "SliceInkWell";

  @override
  _SliceInkWellState createState() => _SliceInkWellState();
}

class _SliceInkWellState extends State<SliceInkWell> {
  double sideLength = 50;

  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        height: sideLength,
        width: sideLength,
        duration: Duration(seconds: 2),
        curve: Curves.easeIn,
        child: Material(
          color: Colors.yellow,
          child: InkWell(
            onTap: () {
              setState(() {
                sideLength == 50 ? sideLength = 100 : sideLength = 50;
              });
            },
          ),
        ),
      ),
    );
  }
}
