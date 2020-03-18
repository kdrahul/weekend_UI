import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:weekend/app_theme.dart';
import '../commons/CollapsingNavigationDrawer.dart';

import 'ContentCard.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  Future<bool> closeEntireApp() {
    DateTime now = DateTime.now();
    DateTime currentTime ;  
    if (currentTime == null ||
        now.difference(currentTime) > Duration(seconds: 1)) {
      currentTime = now;

      Fluttertoast.showToast(
          msg: 'Press Back again to exit',
          toastLength: Toast.LENGTH_SHORT);

      return Future.value(true);
    } else {
      Fluttertoast.cancel();
      return Future.value(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(

        child: 
             Scaffold(
          appBar: AppBar(
            title: Text('Welcome, User'),
          ),
          body: ContentPane(),
          drawer: CollapsingNavigationDrawer(),
        ),
        onWillPop: closeEntireApp);
  }
}
