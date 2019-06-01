import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_responsive_screen/flutter_responsive_screen.dart';

class EventsPage extends StatefulWidget {
  static const route = '/events';

  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
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
            "Events",
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

  Widget _page() {
    return Container(
      child: ListView(
        children: <Widget>[
          Text(
            "Upcoming Events",
            textScaleFactor: 2,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Card(
            elevation: 0.2,
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Colombo Flutter Community",
                          textScaleFactor: 1.0,
                        ),
                        SizedBox(height: hp(0.5)),
                        Text(
                          "Hack 19 Hub will be in Sri Lanka",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            height: 0.8 //You can set your custom height here
                            ,
                          ),
                          textScaleFactor: 1.5,
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(7.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Theme.of(context).primaryColor,
                                ),
                                child: Text(
                                  "View More",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(width: wp(2)),
                              Container(
                                padding: EdgeInsets.all(7.0),
                                child: Text(
                                  "14 hours ago",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          'https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg',
                          height: hp(50),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              width: wp(90),
              height: hp(15),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    wp = Screen(MediaQuery.of(context).size).wp;
    hp = Screen(MediaQuery.of(context).size).hp;
    return Scaffold(
        body: ListView(
      children: <Widget>[_topbar(), _page()],
    ));
  }
}
