import 'package:flutter/material.dart';
import 'package:weekend/screens/commons/CollapsingNavigationDrawer.dart';

class BroadcastPage extends StatelessWidget {
  const BroadcastPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text("Recent Broadcast Messages"),
       ),
       
       drawer: CollapsingNavigationDrawer(),
    );
  }
}

