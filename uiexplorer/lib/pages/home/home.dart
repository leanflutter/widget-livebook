import '../../includes.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildBody(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: routes.length,
        itemBuilder: (BuildContext context, int index) {
          String routeName = routes[index].routeName;
          return ListTile(
            title: Text(routeName),
            onTap: () {
              Navigator.of(context).pushNamed('/$routeName');
            },
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UIExplorer'),
      ),
      body: _buildBody(context),
    );
  }
}
