import '../../includes.dart';

class SliceBottomSheet extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceBottomSheet';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: const Text('SHOW BOTTOM SHEET'),
        onPressed: () {
          showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
            return Container(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Text('This is the modal bottom sheet. Slide down to dismiss.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 24.0,
                  ),
                ),
              ),
            );
          });
        },
      ),
    );
  }
}
