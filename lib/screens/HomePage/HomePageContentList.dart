import 'package:flutter/material.dart';

class MainContent {
    String title;
    String summary;
    NetworkImage image;

    MainContent({this.title, this.summary, this.image});
}

List<MainContent> contentItems = [
    MainContent(title: "TimeTable",
        summary: "Today's Timetable",
        image: NetworkImage(
            "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2F2bbhfjfcid71r1htu46fdnn2-wpengine.netdna-ssl.com%2Fwp-content%2Fuploads%2F2016%2F05%2FClock-.jpg&f=1&nofb=1")),
    MainContent(title: "Guest Lecture", summary: "By Rajath R Kulkarni", image: NetworkImage("https://scontent.fblr2-1.fna.fbcdn.net/v/t1.0-9/45593338_1734757629969393_6944669892352147456_o.jpg?_nc_cat=103&_nc_sid=dd7718&_nc_oc=AQkvoT3V4v5O4JLweBFv7X-n_zAYQeEOK95NKvyoBrMWYmOPxhLoFRzNtuHVEr-2Qgk&_nc_ht=scontent.fblr2-1.fna&oh=fd3c2f29e3834f63ad219dca8b2e90a2&oe=5E98451E")),
];