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
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("HI"),
        ),
      ),
    );
  }
}
