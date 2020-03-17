import 'package:flutter/material.dart';

class NavigationItems {
  String title;
  Icons icons;
  NavigationItems({this.title, this.icons});
}

List<NavigationItems> navItems = [
  NavigationItems(title: "Broadcast Messages"),
  NavigationItems(title: "Marks"),
  NavigationItems(title: "Attendance"),

];