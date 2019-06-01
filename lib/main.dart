import 'package:asyncio/helpers/routes.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: HttpLink(
        uri: "https://hack19.iconicto.com/graphql/",
      ) as Link,
      cache: OptimisticCache(
        dataIdFromObject: typenameDataIdFromObject,
      ),
    ),
  );

  ThemeData _buildThemeData() {
    return ThemeData(
      primaryColor: Color(0xFF6589F1),
      accentColor: Color(0xFF5FDED6),
      fontFamily: 'TTCommons',
    );
  }

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        theme: _buildThemeData(),
        initialRoute: Routes().initialRoute,
        routes: Routes().namedRoutes,
      ),
    );
  }
}
