import '../../includes.dart';

class SliceTextField extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceTextField';

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Password',
      ),
    );
  }
}
