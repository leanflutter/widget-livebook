import '../../includes.dart';

class SliceCircleAvatar extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceCircleAvatar';

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage('https://cn.gravatar.com/avatar/240166231aff9751cb1c91666f76f813'),
    );
  }
}
