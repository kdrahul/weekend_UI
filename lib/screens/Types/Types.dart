import 'dart:async';

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weekend/app_theme.dart';

class Types extends StatelessWidget {
  const Types({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Types',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Types'),
            centerTitle: true,

        ),
        body: Container(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                     PostCall(),
                     Padding(
                         padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                     ),
                     TypesWidget(),
            ],
          ),
        )),
      ),
    );
  }
}

class PostCall extends StatefulWidget {
  PostCall({Key key}) : super(key: key);

  @override
  _PostCallState createState() => _PostCallState();
}

class _PostCallState extends State<PostCall> {
  Future<dynamic> postData() async {
    http.Response response = await http.post(
        Uri.encodeFull('https://notweekend.herokuapp.com/api/types/'),
        headers: {
          'Accept': 'application/json',
        },
        body: {
          'name': 'Testing From the App',
        });

    print(response.body);
    Map<String, dynamic> jsonData = jsonDecode(response.body);
    print(jsonData);
    return jsonData;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: RaisedButton(
                child: Text('Post Data from Types Table'),
                onPressed: () => print(postData()),
    )));
  }
}

 class TypesWidget extends StatefulWidget {
   TypesWidget({Key key}) : super(key: key);

   @override
   _TypesWidgetState createState() => _TypesWidgetState();
 }

 class _TypesWidgetState extends State<TypesWidget> {

   Future<dynamic> getData() async {
     http.Response response = await http
         .get(Uri.encodeFull('https://notweekend.herokuapp.com/api/types/')
 		);

     print(response.body);
     List<dynamic> jsonData = jsonDecode(response.body);
     print(jsonData);
 	return jsonData;
   }

   @override
   Widget build(BuildContext context) {
 return Container(
     child: Center(
        child: RaisedButton(
            child: Text('Get Data from Types Table'),
     onPressed: () => print(getData()),
   ),
 ));
   }
 }
