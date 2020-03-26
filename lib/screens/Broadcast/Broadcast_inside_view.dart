import 'package:flutter/material.dart';
import 'package:weekend/app_theme.dart';
import 'package:weekend/screens/Broadcast/Broadcast_Content.dart';

class BroadcastInside extends StatelessWidget {
  const BroadcastInside({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Container(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text("Broadcast Message"),
        ),
        body: Column(
          children: <Widget>[
            Card(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter:
                            ColorFilter.mode(Colors.black54, BlendMode.darken),
                        image: broadcastContent.backgroundImage,
                        fit: BoxFit.cover)),
                width: MediaQuery.of(context).size.width,
                height: (MediaQuery.of(context).size.height) / 3.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              broadcastContent.title,
                              textAlign: TextAlign.start,
                              textScaleFactor: 2,
                              style: TextStyle(
                                  color: _isDark
                                      ? AppTheme.darkTheme.accentColor
                                      : AppTheme.lightTheme.primaryColor),
                            ),
                          ]),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            broadcastContent.sender,
                            textAlign: TextAlign.right,
                            textScaleFactor: 1.3,
                            style: TextStyle(
                                color: _isDark
                                    ? AppTheme.darkTheme.accentColor
                                    : AppTheme.lightTheme.primaryColor),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, bottom: 18.0),
                          child: Text(
                            broadcastContent.formattedDate,
                            textAlign: TextAlign.right,
                            textScaleFactor: 1.3,
                            style: TextStyle(
                                color: _isDark
                                    ? AppTheme.darkTheme.accentColor
                                    : AppTheme.lightTheme.primaryColor),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                primary: true,
                scrollDirection: Axis.vertical,
                child: Text(
                  broadcastContent.body,
                  style: TextStyle(
                      color: _isDark
                          ? AppTheme.darkTheme.accentColor
                          : AppTheme.lightTheme.accentColor),
                  textScaleFactor: 1.5,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
