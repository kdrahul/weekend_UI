import 'package:flutter/material.dart';
import 'package:weekend/screens/commons/CollapsingNavigationDrawer.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text("Attendance Report"),
       ),
       
       drawer: CollapsingNavigationDrawer(),
    );
  }
}

