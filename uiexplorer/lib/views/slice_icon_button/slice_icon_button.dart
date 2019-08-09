import '../../includes.dart';

class SliceIconButton extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceIconButton';

  @override
  Widget build(BuildContext context) {
    int _volume = 10;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.volume_up),
          tooltip: 'Increase volume by 10',
          onPressed: () {
            // setState(() {
              _volume += 10;
            // });
          },
        ),
        Text('Volume : $_volume')
      ],
    );
  }
}
