import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.orange,
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
  int currentIndex = 0;

  @override
  StatefulWidget get widget => super.widget;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("example"),
        ),
        body: _home_body(),
        bottomNavigationBar: BottomNavigationBar(
          // unselectedFontSize: 14 , //默认字体大小为14 选中后变大,这里设置了大小一致,就不再有变大效果
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              // print('onTap  $currentIndex   $index');
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "首页",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "分类",
            ),
          ],
          // selectedItemColor: Colors.orange,
        ),
      );
}

class _home_body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _home_bodyState();
}

class _home_bodyState extends State {
  @override
  Widget build(BuildContext context) => Center(
        child: Container(
          child: Text("Body"),
        ),
      );
}
