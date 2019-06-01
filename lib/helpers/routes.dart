import 'package:asyncio/pages/events.dart';
import 'package:asyncio/pages/home.dart';
import 'package:flutter/material.dart';

class Routes {
  Map<String, WidgetBuilder> _routes = {
    HomePage.route: (BuildContext context) => HomePage(),
    EventsPage.route: (BuildContext context) => EventsPage(),
  };

  String _initialRoute = HomePage.route;

  Map<String, WidgetBuilder> get namedRoutes {
    return _routes;
  }

  String get initialRoute {
    return _initialRoute;
  }
}
