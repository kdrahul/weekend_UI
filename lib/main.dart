import 'package:flutter/material.dart';
import 'package:weekend/screens/Broadcast/Broadcast_inside_view.dart';
import 'package:weekend/screens/StudentScreens/Attendance.dart';

import 'package:weekend/screens/StudentScreens/MarksPage.dart';
import 'screens/HomePage/HomePage.dart';
// import 'screens/Types/Types.dart';
import 'screens/LoginPage/LoginPage.dart';
import 'app_theme.dart';
void main() => runApp(
    MaterialApp(
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: '/home',
        routes: {
            '/home':(context) => HomePage(),
            '/broadcast_inside': (context) => BroadcastInside(),
            // '/login': (context) => LoginPage(),
            // '/types' : (context) => Types(),
            '/marks' : (context) => MarksPage(),
            '/attendance' : (context) => AttendancePage(),

        },

    )
);

