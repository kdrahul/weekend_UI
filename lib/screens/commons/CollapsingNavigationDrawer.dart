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
    return Container(
        color: AppTheme.darkTheme.primaryColor,
        padding: EdgeInsets.all(10.0),

      constraints: BoxConstraints.tightFor(width: 250),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title: Text(
                "UserName",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text("1BI11IS001"),
              leading: CircleAvatar(),
            ),
            Expanded(

              child: ListView.builder(
                itemCount: navItems.length,
                itemBuilder: (BuildContext context, int index) {

                    return Card(

                        child:  Row(
                            children: <Widget>[

                                Icon(navItems[index].icon, color: Colors.blueGrey),
                                Text(navItems[index].name)
                            ],
                        ),
                    );

//                  return ListTile(
//
//                    title: Text(
//                      navItems[index].name,
//                      style: TextStyle(color: Colors.white),
//                    ),
//                  );
                },
              ),
            )
          ]),
    );
  }
}
