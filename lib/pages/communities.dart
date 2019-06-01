import 'package:flutter/material.dart';
import 'package:flutter_responsive_screen/flutter_responsive_screen.dart';

class CommunitiesPage extends StatefulWidget {
  static const route = '/communities';

  @override
  _CommunitiesPageState createState() => _CommunitiesPageState();
}

class _CommunitiesPageState extends State<CommunitiesPage> {
  Function wp;

  Function hp;

  Widget _topbar() {
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
          top: 70,
          left: 20,
          child: Text(
            "Communities",
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

  Widget block() {
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            "Reach our developer community",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            textScaleFactor: 1.2,
          ),
        ),
        Container(
          child: Card(
            child: Container(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      "Colombo Flutter Community",
                      style: TextStyle(color: Colors.black),
                      textScaleFactor: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    wp = Screen(MediaQuery.of(context).size).wp;
    hp = Screen(MediaQuery.of(context).size).hp;

    return Scaffold(
      body: Column(
        children: <Widget>[
          _topbar(),
          block(),
        ],
      ),
    );
  }
}
