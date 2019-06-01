import 'package:asyncio/helpers/routes.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  ThemeData _buildThemeData() {
    return ThemeData(
      primaryColor: Color(0xFF6589F1),
      accentColor: Color(0xFF5FDED6),
      fontFamily: 'TTCommons',
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _buildThemeData(),
      initialRoute: Routes().initialRoute,
      routes: Routes().namedRoutes,
    );
  }
}
