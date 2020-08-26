import 'package:flutter/material.dart';
import 'PageSecond.dart';
import 'DetailPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "ListPage": (context) => ListPage(),
        "SecondPage": (context) => PageSecond(),
        "DetailPage": (context) => DetailPage(),
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  var msg = "hello world";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是title"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(msg),
            FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              //点击按钮,修改msg的文字
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ListPage();
                }));
              },
              child: Text(
                "Click me",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            RaisedButton(
              child: Text("Click to Page2"),
              onPressed: () {
                Navigator.pushNamed(context, "SecondPage");
              },
            )
          ],
        ),
      ),
    );
  }
}

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[];

    //Demo数据定义
    var data = [
      {"id": 1, "title": "测试数据AAA", "subtitle": "ASDFASDFASDF"},
      {"id": 2, "title": "测试数据bbb", "subtitle": "ASDFASDFASDF"},
      {"id": 3, "title": "测试数据ccc", "subtitle": "ASDFASDFASDF"},
      {"id": 4, "title": "测试数据eee", "subtitle": "ASDFASDFASDF"},
    ];

    for (var item in data) {
      print(item["title"]);

      list.add(ListTile(
        title: Text(item["title"], style: TextStyle(fontSize: 18.0)),
        subtitle: Text(item["subtitle"]),
        leading: Icon(
          Icons.fastfood,
          color: Colors.orange,
        ),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.pushNamed(context, "DetailPage", arguments: item);
        },
      ));
    }

    //返回整个页面
    return Scaffold(
      appBar: AppBar(
        title: Text("List Page"),
      ),
      body: Center(
        child: ListView(
          children: list,
        ),
      ),
    );
  }
}
