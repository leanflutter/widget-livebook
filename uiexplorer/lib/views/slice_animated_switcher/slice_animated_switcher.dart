import '../../includes.dart';

class SliceAnimatedSwitcher extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceAnimatedSwitcher';

  @override
  _SliceAnimatedSwitcherState createState() => _SliceAnimatedSwitcherState();
}

class _SliceAnimatedSwitcherState extends State<SliceAnimatedSwitcher> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(child: child, scale: animation);
          },
          child: Text(
            '$_count',
            // This key causes the AnimatedSwitcher to interpret this as a "new"
            // child each time the count changes, so that it will begin its animation
            // when the count changes.
            key: ValueKey<int>(_count),
            style: Theme.of(context).textTheme.display1,
          ),
        ),
        RaisedButton(
          child: const Text('Increment'),
          onPressed: () {
            setState(() {
              _count += 1;
            });
          },
        ),
      ],
    );
  }
}

