import 'package:flutter/material.dart';
import 'package:weekend/app_theme.dart';
import '../commons/NavigationItems.dart';

class NavigationItems {
  String name;
  IconData icon;

  NavigationItems({this.name, this.icon});
}

List<NavigationItems> navItems = [
  NavigationItems(name: 'Broadcast Alerts', icon: Icons.account_circle),
  NavigationItems(name: 'Marks', icon: Icons.account_circle),
  NavigationItems(name: 'Attendance', icon: Icons.account_circle),
];

class CollapsingNavigationDrawer extends StatefulWidget {
  CollapsingNavigationDrawer({Key key}) : super(key: key);

  @override
  _CollapsingNavigationDrawerState createState() =>
      _CollapsingNavigationDrawerState();
}

class _CollapsingNavigationDrawerState
    extends State<CollapsingNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    bool isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Container(
      color: isDark
          ? AppTheme.darkTheme.primaryColor
          : AppTheme.lightTheme.primaryColor,
      padding: EdgeInsets.only(top: 100.0, left: 10, right: 10, bottom: 10),
      constraints: BoxConstraints.tightFor(width: 300),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title: Text(
                "UserName",
                style: TextStyle(
                    color: isDark
                        ? AppTheme.darkTheme.accentColor
                        : AppTheme.lightTheme.accentColor,
                    fontSize: 18),
              ),
              subtitle: Text("1BI11IS001",
                  style: TextStyle(
                      color: isDark
                          ? AppTheme.darkTheme.accentColor
                          : AppTheme.lightTheme.accentColor)),
              leading: CircleAvatar(),
            ),
            SizedBox(height: 50),
            Expanded(
              child: ListView.builder(
                itemCount: navItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      SizedBox(
                        height: 18,
                      ),
                      Card(
                        elevation: 0,
                        color: isDark ? AppTheme.darkTheme.primaryColor
                                  : AppTheme.lightTheme.primaryColor,
                        child: ListTile(
                        title: Text(
                          navItems[index].name,
                          style: TextStyle(
                              color: isDark
                                  ? AppTheme.darkTheme.accentColor
                                  : AppTheme.lightTheme.accentColor),
                        ),
                        leading: Icon(
                          navItems[index].icon,
                          color: isDark
                              ? AppTheme.darkTheme.accentColor
                              : AppTheme.lightTheme.accentColor,
                        ),
                        onTap: () {},
                      ) ,)
                     
                    ],
                  );
                },
              ),
            )
          ]),
    );
  }
}
