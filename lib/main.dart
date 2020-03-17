import 'package:flutter/material.dart';
import 'screens/HomePage/HomePage.dart';
import 'screens/Types/Types.dart';
import 'screens/LoginPage/LoginPage.dart';
import 'app_theme.dart';
void main() => runApp(
    MaterialApp(
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: '/login',
        routes: {
            '/home':(context) => HomePage(),
            '/login': (context) => LoginPage(),
            '/types' : (context) => Types(),

        },

    )
);

