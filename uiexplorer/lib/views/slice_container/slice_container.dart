import '../../includes.dart';

class SliceContainer extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceContainer';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
      color: Color(0xff000000),
      width: 10.0,
      height: 10.0,
      margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
      child: Container(),
    );
  }
}
