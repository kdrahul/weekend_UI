import 'package:flutter/material.dart';
import 'package:weekend/screens/StudentScreens/MarksPage/PreviousYearMarks.dart';

import 'IAMarks.dart';

class MarksPage extends StatefulWidget {
  MarksPage({Key key}) : super(key: key);

  @override
  _MarksPageState createState() => _MarksPageState();
}

class _MarksPageState extends State<MarksPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Marks"),
            bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 1,
                labelPadding: EdgeInsets.symmetric(vertical: 16),
                labelStyle: TextStyle(fontWeight: FontWeight.w600),
                tabs: [Text("Prev. Sem"), Text("IA Marks")]),
          ),
          body: TabBarView(children: [
            Container(
              child: PreviousYearMarks(),
            ),
            Container(
              child: IAMarks(),
            ),
          ]),
        ));
  }
}
