import '../../includes.dart';

class SliceSizedOverflowBox extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceSizedOverflowBox';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      child: SizedOverflowBox(
        size: const Size(100.0, 100.0),
        alignment: AlignmentDirectional.bottomStart,
        child: Container(height: 50.0, width: 150.0, color: Colors.blue,),
      ),
    );
  }
}
