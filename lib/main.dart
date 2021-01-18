import 'package:flutter/material.dart';
import 'package:flutter_example/components/bottom_item.dart';
import 'package:flutter_example/views/group/Group.dart';
import 'package:flutter_example/views/home//Home.dart';
import 'package:flutter_example/views/mall/Mall.dart';
import 'package:flutter_example/views/profile/Profile.dart';
import 'package:flutter_example/views/subject/Subject.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.orange,
        accentColor: Colors.orangeAccent,
        // 下面这两条属性设置取消 Material 的水波纹效果
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      title: "example",
      home: _homeWidget(),
    );
  }
}

class _homeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _homeWidgetState();
}

class _homeWidgetState extends State {
  int currentIndex = 0; // 当前选中的 index
  Map<String, String> bottoms = {
    "首页": "images/home.png",
    "影音": "images/book.png",
    "圈子": "images/group.png",
    "市场": "images/store.png",
    "我的": "images/person.png",
  };

  @override
  Widget build(BuildContext context) => Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: [Home(), Subject(), Group(), Mall(), Profile()],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 2,
          type: BottomNavigationBarType.fixed,
          // 这里跟Android中相似,过多的Item默认会不显示lable
          // unselectedFontSize: 14 , //默认字体大小为14 选中后变大,这里设置了大小一致,就不再有变大效果
          currentIndex: currentIndex,
          onTap: (index) {
            // 这里控制点击生效
            setState(() {
              // print('onTap  $currentIndex   $index');
              currentIndex = index;
            });
          },
          items: [
            bottombar_item("home", "首页"),
            bottombar_item("book", "影音"),
            bottombar_item("group", "圈子"),
            bottombar_item("store", "市场"),
            bottombar_item("person", "我的"),
          ],
          // selectedItemColor: Colors.orange,
        ),
      );
}
//
// class _home_body extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _home_bodyState();
// }
//
// class _home_bodyState extends State {
//   @override
//   Widget build(BuildContext context) => Center(
//         child: Container(
//           child: Text("Body"),
//         ),
//       );
// }
