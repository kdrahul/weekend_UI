import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../commons/CollapsingNavigationDrawer.dart';

import 'ContentCard.dart';
DateTime currentTime;
DateTime pressedTime;
Future<bool> closeEntireApp() async {
  currentTime = DateTime.now();
  
  //Statement 1 Or statement2

  if (pressedTime == null ||
      pressedTime.difference(currentTime) > Duration(milliseconds: 500)) {
    // print(currentTime.difference(pressedTime));
    pressedTime = currentTime;
    Fluttertoast.showToast(
        msg: "Double Click to exit app",
        backgroundColor: Colors.black45,
        textColor: Colors.white60);
    return false;
  }
  return true;
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Welcome, User'),
          ),
          body: ContentPane(),
          drawer: CollapsingNavigationDrawer(),
        ),
        onWillPop: closeEntireApp);
  }
}
