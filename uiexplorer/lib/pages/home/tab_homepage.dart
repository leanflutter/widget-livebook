import '../../includes.dart';

class TabHomepageScene extends StatefulWidget {
  @override
  _TabHomepageSceneState createState() => _TabHomepageSceneState();
}

class _TabHomepageSceneState extends State<TabHomepageScene> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Container()
    );
  }
}
