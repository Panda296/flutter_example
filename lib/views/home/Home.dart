import 'package:flutter/material.dart';
import 'package:flutter_example/network/net_work.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("首页"),
        ),
        body: _home_body());
  }
}

class _home_body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _home_bodyState();
}

class _home_bodyState extends State {
  @override
  void initState() {
    super.initState();
    final params = {"q": "周杰伦", "start": "0"};
    net_work.reques("search", params: params).then((value) {
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) => Container();
}
