import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:threat_around/extensions/custom_icons.dart';
class Config {

  static List<BottomNavigationBarItem> navigationBarItems = [
    BottomNavigationBarItem(
      icon: Icon(
        CustomIcons.business_center,
      ),
      title: Text(
        "Threat",
        style: new TextStyle(
          fontSize: 12.0,
          // color: Colors.yellow,
        ),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        CustomIcons.search, // event_note
      ),
      title: Text(
        "Message",
        style: new TextStyle(
          fontSize: 12.0,
          // color: Colors.yellow,
        ),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        CustomIcons.bookmark_border, // grid_on 
      ),
      title: Text(
        "Upload",
        style: new TextStyle(
          fontSize: 12.0,
          // color: Colors.yellow,
        ),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        CustomIcons.notifications_none,
      ),
      title: Text(
        "Notification",
        style: new TextStyle(
          fontSize: 12.0,
          // color: Colors.yellow,
        ),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        CustomIcons.person_outline,
      ),
      title: Text(
        "Profile",
        style: new TextStyle(
          fontSize: 12.0,
          // color: Colors.yellow,
        ),
      ),
    ),
  ];

  static BottomNavigationBar navigationBar = BottomNavigationBar(
    items: navigationBarItems,
    type: BottomNavigationBarType.fixed,
    fixedColor: Hexcolor("#4EB152"),
  );

}