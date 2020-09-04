import 'package:alexflutter/FlexPage.dart';
import 'package:flutter/material.dart';
import 'PageSecond.dart';
import 'DetailPage.dart';
import 'ButtonPage.dart';
import 'ContainerPage.dart';
import 'LayoutPage.dart';
import 'FlexPage.dart';
import 'TableViewCellPage.dart';
import 'TestingView.dart';
import 'SafeAreaPage.dart';
import 'package:alexflutter/MyTabBarPageView.dart';
import 'WrapPage.dart';
import 'StackPage.dart';
import 'package:alexflutter/AnimationPage.dart';
import 'package:alexflutter/PageViewPage.dart';
import 'package:provider/provider.dart';
import 'ProviderPage.dart';
import 'package:alexflutter/Counter.dart';
import 'package:alexflutter/EventBusPage.dart';


void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: new Counter(4)),
        ],
        child: MyApp(),
      ),
  );
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
        "ButtonPage": (context) => ButtonPage(),
        "ContainerPage": (context) => ContainerPage(),
        "LayoutPage": (context) => LayoutPage(),
        "FlexPage": (context) => FlexPage(),
        "TableViewCellPage": (context) => TableViewCellPage(),
        "TestingView": (context) => TestingView(),
        "SafeAreaPage": (context) => SafeAreaPage(),
        "TabBarController": (context) => MyTabBarPageView(),
        "WrapPageController": (context) => WrapPage(),
        "StackPage": (context) => StackPage(),
        "AnimationPage": (context) => AnimationPage(),
        "PageViewPage": (context) => PageViewPage(),
        "ProviderPage": (context) => ProviderPage(),
        "EventBusPage": (context) => EventBusPage(),
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
        child: SingleChildScrollView(
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
              ),
              RaisedButton(
                child: Text('ButtonPage'),
                color: Colors.blue,
                onPressed: () {
                  Navigator.pushNamed(context, "ButtonPage");
                },
              ),
              RaisedButton(
                child: Text("ContainerPage"),
                onPressed: () {
                  Navigator.pushNamed(context, "ContainerPage");
                },
              ),
              RaisedButton(
                child: Text("ImagePage"),
                onPressed: () {
                  Navigator.pushNamed(context, "ImagePage");
                },
              ),
              RaisedButton(
                child: Text("LayoutPage"),
                onPressed: () {
                  Navigator.pushNamed(context, "LayoutPage");
                },
              ),
              RaisedButton(
                  child: Text("FlexPage"),
                  onPressed: () {
                    Navigator.pushNamed(context, "FlexPage");
                  }),
              RaisedButton(
                child: Text("TableViewCellPage"),
                onPressed: () {
                  Navigator.pushNamed(context, "TableViewCellPage");
                },
              ),
              RaisedButton(
                child: Text("TestViews"),
                onPressed: () {
                  Navigator.pushNamed(context, "TestingView");
                },
              ),
              RaisedButton(
                child: Text("safeAreaViews"),
                onPressed: () {
                  Navigator.pushNamed(context, "SafeAreaPage");
                },
              ),
              RaisedButton(
                  child: Text("TabbarController"),
                  onPressed: () {
                    Navigator.pushNamed(context, "TabBarController");
                  }),
              RaisedButton(
                  child: Text("WrapPage"),
                  onPressed: () {
                    Navigator.pushNamed(context, "WrapPageController");
                  }),
              RaisedButton(
                child: Text('StackPage'),
                onPressed: () {
                  Navigator.pushNamed(context, "StackPage");
                },
              ),
              RaisedButton(
                child: Text("animationPage"),
                onPressed: () {
                  Navigator.pushNamed(context, "AnimationPage");
                },
              ),
              RaisedButton(
                  child: Text("PageViewPage"),
                  onPressed: () {
                    Navigator.pushNamed(context, "PageViewPage");
                  }),
              RaisedButton(
                child: Text("ProviderPage"),
                onPressed: () {
                  Navigator.pushNamed(context, "ProviderPage");
                },
              ),
              RaisedButton(
                child: Text("EventBusPage"),
                onPressed:() {
                  Navigator.pushNamed(context, "EventBusPage");
                },
              ),
            ],
          ),
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

