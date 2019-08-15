import '../../includes.dart';

class SliceAnimatedContainer extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceAnimatedContainer';

  @override
  _SliceAnimatedContainerState createState() => _SliceAnimatedContainerState();
}

class _SliceAnimatedContainerState extends State<SliceAnimatedContainer> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 200.0 : 100.0,
          height: selected ? 100.0 : 200.0,
          color: selected ? Colors.red : Colors.blue,
          alignment:
              selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: FlutterLogo(size: 75),
        ),
      ),
    );
  }
}
