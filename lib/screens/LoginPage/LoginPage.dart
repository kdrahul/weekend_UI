import 'package:flutter/material.dart';

import '../../app_theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

//Color appBarText(){
//    Brightness currentBrightness = MediaQuery.of(context).platformBrightness;
//    if (currentBrightness == Brightness.dark) {
//        return AppTheme.darkTheme.colorScheme.onPrimary;
//    }
//    else {
//        return AppTheme.lightTheme.colorScheme.onPrimary;
//    }
//}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextField(
                  style: TextStyle(color: Colors.blueGrey),
                  decoration: InputDecoration(
                    
                    hintText: 'e.g 1BI10IS001',
                    enabled: true,
                    labelText: 'Username',
                  ),
                  readOnly: false,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                ),
                TextField(
                  style: TextStyle(color: Colors.blueGrey),
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                  readOnly: false,
                ),
              ],
            ),
          ),
          padding: EdgeInsets.only(left: 30.0, right: 30.0),
          alignment: Alignment.center,
        ),
        appBar: AppBar(
          title: Text(
            'Login Page',
            style: TextStyle(
                fontFamily: 'Raleway',


            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.directions),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          label: Text(
            'Sign-Up',
            style: TextStyle(fontFamily: 'Raleway'),
          ),
        ),
      );
    
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key key}) : super(key: key);

  State<StatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(42.0),
      child: Column(children: <Widget>[
        TextField(
          decoration: InputDecoration(hintText: 'Input Email Here'),
        ),
        Text('Username/Email ID'),
      ]),
    );
  }
}
