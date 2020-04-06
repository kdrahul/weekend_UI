import 'package:flutter/material.dart';

class NavigationItems {
  String name;
  IconData icon;
  String routes;
  NavigationItems({this.name, this.icon, this.routes});
}

List<NavigationItems> navItems = [
  NavigationItems(name: 'Home', icon: Icons.home, routes: '/home'),
  NavigationItems(
      name: 'Broadcast Alerts',
      icon: Icons.account_circle,
      routes: '/broadcast'),
  NavigationItems(name: 'Marks', icon: Icons.account_circle, routes: '/marks'),
  NavigationItems(
      name: 'Attendance', icon: Icons.account_circle, routes: '/attendance'),
];
