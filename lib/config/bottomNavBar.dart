import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:threat_around/extensions/custom_icons.dart';
class Config {

  static List<BottomNavigationBarItem> navigationBarItems = [
    BottomNavigationBarItem(
      icon: Icon(
        CustomIcons.warning_empty
      ),
      title: Text(
        "Threats",
        style: new TextStyle(
          fontSize: 12.0,
          // color: Colors.yellow,
        ),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        CustomIcons.comment // event_note
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
        CustomIcons.plus, // grid_on 
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
        CustomIcons.bell,
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
        CustomIcons.user_outline,
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
    fixedColor: Hexcolor("#2FC7F5"),
  );

}