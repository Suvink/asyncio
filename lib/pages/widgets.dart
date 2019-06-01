import 'package:asyncio/helpers/queries.dart';
import 'package:asyncio/models/data_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_screen/flutter_responsive_screen.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class WidgetsPage extends StatefulWidget {
  static const route = '/widgets';

  @override
  _WidgetsPageState createState() => _WidgetsPageState();
}

class _WidgetsPageState extends State<WidgetsPage> {
  Function wp;

  Function hp;

  Widget _buildTopTitle() {
    return Stack(
      children: <Widget>[
        Container(
          height: hp(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).accentColor,
                Theme.of(context).primaryColor,
              ],
            ),
          ),
        ),
        Positioned(
          top: 85,
          left: 20,
          child: Text(
            "Widgets",
            textScaleFactor: 3,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

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
          // Data apiData = Data.fromMap(result.data);
          // print(apiData.responseWidgets[0].image);
          // ResponseWidget widget = apiData.responseWidgets[0];
          return Column(
            children: <Widget>[
              _buildTopTitle(),
              Container(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Image.network(
                        'https://iconicto.sgp1.cdn.digitaloceanspaces.com/Hack19/media/Widget/Screen_Shot_2019-06-01_at_2.37.22_PM.png',
                        width: wp(35),
                        height: hp(25),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: <Widget>[
                          Text(
                            "#WidgetOfTheDay",
                            textScaleFactor: 1.5,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Transform", textScaleFactor: 2.5),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 0.0),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Previous Widgets",
                  textScaleFactor: 2.2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
