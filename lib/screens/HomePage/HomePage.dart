import 'package:flutter/material.dart';
import 'package:weekend/app_theme.dart';
import '../commons/CollapsingNavigationDrawer.dart';

import 'ContentCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Welcome, User'),
      ),
      body: ContentPane(),
      drawer: CollapsingNavigationDrawer(),
    ));
  }
}


