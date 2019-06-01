import 'package:flutter/material.dart';

class WidgetsPage extends StatelessWidget {
  static const route = '/widgets';
  const WidgetsPage({Key key}) : super(key: key);

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
