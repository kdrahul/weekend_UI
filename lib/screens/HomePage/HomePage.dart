import 'package:flutter/material.dart';
import 'package:weekend/app_theme.dart';
import '../commons/CollapsingNavigationDrawer.dart';

import '../commons/contentItems.dart';




class HomePage extends StatelessWidget {
    const HomePage({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Container(
            child: Scaffold(
                appBar: AppBar(

                    title: Text('Welcome, User'),
                ),
                body: ContentPane(),
                drawer: CollapsingNavigationDrawer(),
            ));
    }
}





class ContentPane extends StatefulWidget {
    ContentPane({Key key}) : super(key: key);

    @override
    _ContentPaneState createState() => _ContentPaneState();
}

int _count = contentItems.length;

class _ContentPaneState extends State<ContentPane> {
    @override
    Widget build(BuildContext context) {
        return Container(
            padding: EdgeInsets.all(10.0),
            child: ListView.builder(
                itemCount: _count,
                itemBuilder: (BuildContext context, int index) {
                    return Card(
                        child: ListTile(
                            onTap: () =>
                                AlertDialog(
                                    title: Text(contentItems[index].title),
                                ),
                            title: Text(contentItems[index].title),
                            subtitle: Text(contentItems[index].summary),
                            trailing: CircleAvatar(
                                backgroundImage: contentItems[index].image),
                        ));
                },
            ),
        );
    }
}
