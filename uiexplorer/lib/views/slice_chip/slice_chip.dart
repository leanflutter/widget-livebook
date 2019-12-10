import '../../includes.dart';

class SliceChip extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceChip';

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        backgroundColor: Colors.grey.shade800,
        child: Text('AB'),
      ),
      label: Text('Aaron Burr'),
    );
  }
}
