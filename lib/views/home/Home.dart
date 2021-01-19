import 'package:flutter/material.dart';
import 'package:flutter_example/models/model_text.dart';
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
  Home_Item home_item = Home_Item();

  @override
  void initState() {
    super.initState();
    final params = {"q": "周杰伦", "start": "0"};
    net_work.reques("search", params: params).then((value) {
      setState(() {
        this.home_item = Home_Item.fromJson(value.data);
      });
    }).catchError((error) {
      print(error);
    });
  }

  @override
  Widget build(BuildContext context) {
    return home_item.musics == null
        ? Center(child: CircularProgressIndicator())
        : Center(
            child: ListView.builder(
              itemCount: home_item.musics.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(home_item.musics[index].image),
                  title: Text(home_item.musics[index].title),
                );
              },
            ),
          );
  }
}
