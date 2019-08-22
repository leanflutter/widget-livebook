import '../includes.dart';

class AppNavigator extends StatelessWidget {
  Map<String, WidgetBuilder> _buildRoutes() {
    return Map<String, WidgetBuilder>.fromIterable(
      routes,
      key: (dynamic item) => '/${item.routeName}',
      value: (dynamic item) => item.buildRoute,
    );
  }

  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      routes: _buildRoutes(),
    );
    return materialApp;
  }
}
