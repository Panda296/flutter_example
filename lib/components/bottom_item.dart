import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottombar_item extends BottomNavigationBarItem {
  bottombar_item(String iconName, String title)
      : super(
            icon: Image.asset("images/$iconName.png"),
            label: title,
            activeIcon: Image.asset(
              "images/$iconName.png",
              color: Colors.orangeAccent,
            ));
}
