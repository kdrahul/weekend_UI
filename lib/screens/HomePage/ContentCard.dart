import 'package:flutter/material.dart';
import 'package:weekend/app_theme.dart';
import 'package:weekend/screens/HomePage/HomePageContentList.dart';

class ContentPane extends StatefulWidget {
  ContentPane({Key key}) : super(key: key);

  @override
  _ContentPaneState createState() => _ContentPaneState();
}

int _count = contentItems.length;

class _ContentPaneState extends State<ContentPane> {
  @override
  Widget build(BuildContext context) {
    bool isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.all(10.0),
      child: ListView.builder(
        itemCount: _count,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            
              child: ListTile(
            onTap: () => Navigator.pushNamed(context, '/broadcast_inside'),
            title: Text(contentItems[index].title,
                style: TextStyle(
                    color: isDark
                        ? AppTheme.darkTheme.accentColor
                        : AppTheme.lightTheme.accentColor)),
            subtitle: Text(contentItems[index].summary,
                style: TextStyle(
                    color: isDark
                        ? AppTheme.darkTheme.accentColor
                        : AppTheme.lightTheme.accentColor)),
            trailing:  CircleAvatar(backgroundImage: contentItems[index].image),
          ));
        },
      ),
    );
  }
}
