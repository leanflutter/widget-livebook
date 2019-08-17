import '../../includes.dart';

class SlicePhysicalModel extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SlicePhysicalModel';

  @override
  _SlicePhysicalModelState createState() => _SlicePhysicalModelState();
}

class _SlicePhysicalModelState extends State<SlicePhysicalModel> {
  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      elevation: 6.0,
      shape: BoxShape.rectangle,
      shadowColor: Colors.black,
      color: Colors.white,
      child: Container(
        height: 120.0,
        width: 120.0,
        color: Colors.blue[50],
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
  }
}
