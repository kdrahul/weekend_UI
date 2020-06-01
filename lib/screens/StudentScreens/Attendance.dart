import 'package:flutter/material.dart';
import 'package:weekend/app_theme.dart';
import 'package:weekend/screens/StudentScreens/AttendanceGraphWidget.dart';
import 'package:weekend/screens/commons/CollapsingNavigationDrawer.dart';

class SubjectNames {
  String subjectName;
  bool lab;
  String percentage;

  SubjectNames({this.subjectName, this.lab, this.percentage});
}

List<SubjectNames> subjectNames = [
  SubjectNames(
      subjectName: "Database Management", lab: false, percentage: "85"),
  SubjectNames(
      subjectName: "Software Engineering", lab: false, percentage: "75"),
  SubjectNames(
      subjectName: "Computer Networking", lab: false, percentage: "60"),
  SubjectNames(
      subjectName: "Management & Entrepreneurship",
      lab: false,
      percentage: "88"),
  SubjectNames(
      subjectName: "Artificial Intelligence", lab: true, percentage: "66"),
];

class AttendancePage extends StatelessWidget {
  const AttendancePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    Color _textColor = _isDark
        ? AppTheme.darkTheme.accentColor
        : AppTheme.lightTheme.accentColor;

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: (MediaQuery.of(context).size.height) / 3,
            child: AttendanceGraph(),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: subjectNames.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    ListTile(
                      onTap: () {},
                      title: Text(
                        subjectNames[index].subjectName,
                        style: TextStyle(
                            fontWeight: FontWeight.w300, color: _textColor),
                      ),
                      trailing: Text(subjectNames[index].percentage + "%",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: _textColor)),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(
          "Attendance Report",
          style: TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w300,
              color: _textColor),
        ),
      ),
      drawer: CollapsingNavigationDrawer(),
    );
  }
}
