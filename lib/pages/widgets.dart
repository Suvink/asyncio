import 'package:asyncio/helpers/queries.dart';
import 'package:asyncio/models/data_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_screen/flutter_responsive_screen.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class WidgetsPage extends StatelessWidget {
  static const route = '/widgets';
  Function wp;
  Function hp;

  @override
  Widget build(BuildContext context) {
    wp = Screen(MediaQuery.of(context).size).wp;
    hp = Screen(MediaQuery.of(context).size).hp;
    return Scaffold(
      body: Query(
        options: QueryOptions(document: Queries().widgets),
        builder: (QueryResult result, {VoidCallback refetch}) {
          if (result.loading) {
            return Container(
                padding: EdgeInsets.all(50.0),
                child: Center(child: CircularProgressIndicator()));
          }
          if (result.data == null) {
            return Center(child: Text("No Data Found !"));
          }
          print(result.data);
          // print("HH ${result.data['news'][0]['title']}");
          Data apiData = Data.fromMap(result.data);
          // print(apiData.getData());
          print(apiData.news[0].title);
          // Data apiData = Data.fromMap(result.data);
          // GraphQLResponse data = GraphQLResponse.fromMap(result.data);
          return Column(
            children: <Widget>[
              Container(child: Row(children: <Widget>[Image.network('src')],),)
            ],
          );
        },
      ),
    );
  }
}
