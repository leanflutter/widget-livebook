import '../../includes.dart';

class SliceSliverAppBar extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceSliverAppBar';

  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Available seats'),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_circle),
                tooltip: 'Add new entry',
                onPressed: () {/* ... */},
              ),
            ],
          ),
          SliverPadding(
            padding: EdgeInsets.zero,
            sliver: Container(
              height: 400,
              child: Text(''),
            )
          ),
        ],
      ),
    );
  }
}
