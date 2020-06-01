import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weekend/screens/Broadcast/BroadcastForm.dart';
import 'package:weekend/screens/Broadcast/Broadcast_inside_view.dart';
import 'package:weekend/screens/StudentScreens/Attendance.dart';
import 'package:weekend/screens/StudentScreens/MarksPage/MarksPage.dart';
import 'screens/HomePage/HomePage.dart';
// import 'screens/LoginPage/LoginPage.dart';
import 'app_theme.dart';

void main() => runApp(OrientationWrapper());

class OrientationWrapper extends StatelessWidget {
  const OrientationWrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/broadcast_inside': (context) => BroadcastInside(),
        '/broadcast_form': (context) => BroadcastSender(),
        // '/login': (context) => LoginPage(),
        '/marks': (context) => MarksPage(),
        '/attendance': (context) => AttendancePage(),
      },
    );
  }
}
