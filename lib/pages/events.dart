import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  static const route = '/events';
  const EventsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("HI"),
        ),
      ),
    );
  }
}
