import '../../includes.dart';

class SliceAspectRatio extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceAspectRatio';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: new AspectRatio(
        aspectRatio: 4 / 3,
        child: new Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
