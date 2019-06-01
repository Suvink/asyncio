import 'package:asyncio/helpers/queries.dart';
import 'package:asyncio/pages/communities.dart';
import 'package:asyncio/pages/events.dart';
import 'package:asyncio/pages/tutorials.dart';
import 'package:asyncio/pages/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_screen/flutter_responsive_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomePage extends StatefulWidget {
  static const route = '/';
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Function wp;
  Function hp;
  int _selectedIndex = 0;
  double selectedTextScale = 2.2;

  List<Map<String, String>> _buildMenuCardInfoList() {
    List<Map<String, String>> _menuCardInfoList = [];
    _menuCardInfoList.add({
      "title": "EVENTS",
      "imageURL":
          "https://cdn.discordapp.com/attachments/584288125459759104/584301602769338399/events.jpg"
    });
    _menuCardInfoList.add({"title": "TUTORIALS", "imageURL": ""});
    _menuCardInfoList.add({
      "title": "WIDGETS",
      "imageURL":
          "https://www.sayonetech.com/media/uploads/zinnia/flutter_banner.jpg"
    });
    _menuCardInfoList.add({
      "title": "COMMUNITIES",
      "imageURL":
          "https://media.wired.com/photos/5932e854f682204f73697e7f/master/w_582,c_limit/hack.jpg"
    });
    return _menuCardInfoList;
  }

  List<Widget> _buildBottomTitles() {
    List<Widget> _temp = [];
    List<Map<String, String>> _menuCardInfoList = _buildMenuCardInfoList();
    _menuCardInfoList.forEach(
      (Map<String, String> menuCardInfo) => _temp.add(
            _buildMenuCard(
              menuCardInfo['title'],
              menuCardInfo['imageURL'],
            ),
          ),
    );
    return _temp;
  }

  Widget _buildMenuCard(String title, String imageURL) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        width: wp(65),
        child: Stack(
          children: <Widget>[
            Container(
                width: wp(65),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.network(
                    imageURL,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                )),
            Positioned(
              top: 20,
              left: 20,
              child: Opacity(
                opacity: 0.5,
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  color: Colors.black,
                  alignment: Alignment.topCenter,
                  child: Text(
                    title,
                    textScaleFactor: 2.2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 22,
              left: 20,
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  title,
                  textScaleFactor: 2.2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              child: GestureDetector(
                onTap: () {
                  switch (_selectedIndex) {
                    case 0:
                      Navigator.pushNamed(context, EventsPage.route);
                      break;
                    case 1:
                      Navigator.pushNamed(context, TutorialsPage.route);
                      break;
                    case 2:
                      Navigator.pushNamed(context, WidgetsPage.route);
                      break;
                    case 3:
                      Navigator.pushNamed(context, CommunitiesPage.route);
                      break;
                  }
                },
                child: _buildViewAllButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildViewAllButton() {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(150.0),
          bottomLeft: Radius.circular(100.0),
          bottomRight: Radius.circular(10.0),
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
      height: hp(5),
      width: wp(30),
      alignment: Alignment.center,
      child: Text(
        "View All",
        textScaleFactor: 1.2,
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  Widget _buildNewsItem() {
    return Card(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    wp = Screen(MediaQuery.of(context).size).wp;
    hp = Screen(MediaQuery.of(context).size).hp;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(height: 30),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Stack(
              children: <Widget>[
                Container(
                  width: wp(100),
                  height: hp(10),
                ),
                Positioned(
                  top: 10,
                  left: 15,
                  child: Text(
                    "Timeline",
                    textScaleFactor: 3.8,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 35,
                  child: Text(
                    "See stuff around you",
                    textScaleFactor: 1.0,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
          ),
          CarouselSlider(
            height: hp(45),
            enlargeCenterPage: true,
            onPageChanged: (int pageNumber) {
              setState(() {
                _selectedIndex = pageNumber;
              });
            },
            viewportFraction: 0.7,
            initialPage: 0,
            enableInfiniteScroll: true,
            items: _buildBottomTitles(),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
            alignment: Alignment.centerLeft,
            child: Text(
              "News",
              textScaleFactor: 2.5,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Query(
            options: QueryOptions(document: Queries().news),
            builder: (QueryResult result, {VoidCallback refetch}) {
              if (result.loading) {
                return Center(child: CircularProgressIndicator());
              }
              if (result.data == null) {
                return Center(child: Text("No Data Found !"));
              }
            },
          ),
          _buildNewsItem()
        ],
      ),
    );
  }
}
