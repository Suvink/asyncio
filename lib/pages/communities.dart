import 'package:flutter/material.dart';
import 'package:flutter_responsive_screen/flutter_responsive_screen.dart';

class CommunitiesPage extends StatelessWidget {
  static const route = '/communities';
  Function wp;
  Function hp;

  @override
  Widget build(BuildContext context) {
    wp = Screen(MediaQuery.of(context).size).wp;
    hp = Screen(MediaQuery.of(context).size).hp;

    final topBar = new Stack(
      children: <Widget>[
        Positioned(
          child: Container(
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
        ),
        Positioned(
          top: 70,
          left: 120,
          child: Text(
            "Events",
            textScaleFactor: 3,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
      ],
    );

    final block = Stack(
      children: <Widget>[
        Positioned(
          top: 150,
          left: 70.0,
          child: Text(
            "Reach our developer community",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            textScaleFactor: 1.2,
          ),
        ),
        Positioned(
          top: 160.0,
          child: Card(
            child: Container(
              padding: EdgeInsets.all(5.0),
              child: ListView(
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
}
