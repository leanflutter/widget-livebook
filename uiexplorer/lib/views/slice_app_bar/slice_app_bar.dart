import '../../includes.dart';

class SliceAppBar extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceAppBar';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight + (context != null ? MediaQuery.of(context).padding.top : 0),
      child: AppBar(
        title: const Text('AppBar Sample'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Next page',
            onPressed: () {
            },
          ),
        ],
      ),
    );
  }
}
