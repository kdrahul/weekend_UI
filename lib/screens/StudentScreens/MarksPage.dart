import 'package:flutter/material.dart';
import 'package:weekend/screens/commons/CollapsingNavigationDrawer.dart';

class MarksPage extends StatefulWidget {
  MarksPage({Key key}) : super(key: key);

  @override
  _MarksPageState createState() => _MarksPageState();
}



class _MarksPageState extends State<MarksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Marks"),
      ),
      body: Container(
        child: DefaultTabController(
          length: 2,
          child: TabBar(
            
              tabs: [Tab(text: "IA Marks"), Tab(text: "Last Sem Marks")]),
        ),
      ),
      drawer: CollapsingNavigationDrawer(),
    );
  }
}
