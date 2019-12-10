import '../../includes.dart';

class SliceIconButton extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceIconButton';

  @override
  _SliceIconButtonState createState() => _SliceIconButtonState();
}

class _SliceIconButtonState extends State<SliceIconButton> {
  double _volume = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.volume_up),
              tooltip: 'Increase volume by 10',
              onPressed: () {
                setState(() {
                  _volume += 10;
                });
              },
            ),
            Text('Volume : $_volume')
          ],
        ),
      ),
    );
  }
}
