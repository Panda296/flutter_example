import 'package:flutter/material.dart';

class Group extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("圈子"),
      ),
      body: Center(
        child: Text(
          "圈子",
          style: TextStyle(fontSize: 30, color: Colors.orangeAccent),
        ),
      ),
    );
  }
}
