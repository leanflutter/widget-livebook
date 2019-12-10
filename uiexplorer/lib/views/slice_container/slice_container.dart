import '../../includes.dart';

class SliceContainer extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceContainer';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        color: Colors.amber[600],
        width: 48.0,
        height: 48.0,
      ),
    );
  }
}
