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
              child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15.0),
                child: Image.network(
                  'https://cdn-images-1.medium.com/max/1200/1*ilC2Aqp5sZd1wi0CopD1Hw.png',
                  width: wp(25),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Text(
                        "Colombo Flutter Community",
                        style: TextStyle(color: Colors.black),
                        textScaleFactor: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  "About Us",
                  textScaleFactor: 1.5,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Colombo Flutter Community is a determined to promote the use of Flutter throughout Sri Lanka as it is the future for mobile application development.",
                  textScaleFactor: 1.3,
                ),
              )
            ],
          )),
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
