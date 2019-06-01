import 'package:asyncio/pages/communities.dart';
import 'package:asyncio/pages/events.dart';
import 'package:asyncio/pages/home.dart';
import 'package:asyncio/pages/tutorials.dart';
import 'package:asyncio/pages/widgets.dart';
import 'package:flutter/material.dart';

class Routes {
  Map<String, WidgetBuilder> _routes = {
    HomePage.route: (BuildContext context) => HomePage(),
    EventsPage.route: (BuildContext context) => EventsPage(),
    WidgetsPage.route: (BuildContext context) => WidgetsPage(),
    CommunitiesPage.route: (BuildContext context) => CommunitiesPage(),
    TutorialsPage.route: (BuildContext context) => CommunitiesPage(),
  };

  String _initialRoute = HomePage.route;

  Map<String, WidgetBuilder> get namedRoutes {
    return _routes;
  }

  String get initialRoute {
    return _initialRoute;
  }
}
