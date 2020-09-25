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
import 'SharePreferencePage.dart';
import 'SynchronizedPage.dart';
import 'TextEditorPage.dart';
import 'NotFoundPage.dart';
import 'http_request.dart';
import 'request_page.dart';
import 'material_learning_page.dart';
import 'package:alexflutter/live_page.dart';
import 'danmu_view_page.dart';
import 'package:alexflutter/ios_plat_form_view.dart';
import 'live_end_page.dart';
import 'Painter_page.dart';
import 'portrait_danmu_page.dart';

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
        "sharePreference": (context) => SharePreferencePage(),
        "SynchronizedPage": (context) => SynchronizedPage(),
        "TextEditorPage": (context) => TextEditorPage(),
        "RequestPage":(context) => request_page(),
        "material_learning_page":(context) => material_page(),
        "live_page":(context) => live_page(),
        "danmu_view_page":(context) => danmu_view_page(),
        "ios_plat_form_view":(context) => plat_form_view(),
        "live_end_page":(context) => live_end_page(),
        "Painter_page":(context) => Cake(),
        "portrait_danmu_page":(context) => portrait_danmu_page(),
      },
      onUnknownRoute: (RouteSettings setting) {
        String name = setting.name;
        return MaterialPageRoute(builder: (context) {
          return NotFoundPage();
        });
      },
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
              RaisedButton(
                child: Text("live_end_page"),
                onPressed: () {
                  Navigator.pushNamed(context, "live_end_page");
                },
              ),
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
                onPressed: () {
                  Navigator.pushNamed(context, "EventBusPage");
                },
              ),
              RaisedButton(
                child: Text("sharePreference"),
                onPressed: () {
                  Navigator.pushNamed(context, "sharePreference");
                },
              ),
              RaisedButton(
                child: Text("SynchronizedPage"),
                onPressed: () {
                  Navigator.pushNamed(context, "SynchronizedPage");
                },
              ),
              RaisedButton(
                child: Text("TextEditorPage"),
                onPressed: () {
                  Navigator.pushNamed(context, "TextEditorPage");
                },
              ),
              RaisedButton(
                child: Text("NotFoundPage"),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          opaque: false,
                          pageBuilder: (BuildContext context, _, __) {
                            return new NotFoundPage();
                          },
                          transitionsBuilder: (___, Animation<double> animation,
                              ____, Widget child) {
                            return FadeTransition(
                              opacity: animation,
                              child: RotationTransition(
                                turns: Tween<double>(begin: 0.5, end: 1.0)
                                    .animate(animation),
                                child: child,
                              ),
                            );
                          }));
                },
              ),
              RaisedButton(
                child: Text("RequestPage"),
                onPressed: () {
                    Navigator.pushNamed(context, "RequestPage");
                },
              ),
              RaisedButton(
                child: Text("material_learning_page"),
                onPressed: () {
                  Navigator.pushNamed(context, "material_learning_page");
                },
              ),
              RaisedButton(
                child: Text("live_page"),
                onPressed: () {
                  Navigator.pushNamed(context, "live_page");
                },
              ),
              RaisedButton(
                child: Text("danmu_view_page"),
                onPressed: (){
                  Navigator.pushNamed(context, "danmu_view_page");
                },
              ),
              RaisedButton(
                child: Text("ios_plat_form_view"),
                onPressed: () {
                  Navigator.pushNamed(context, "ios_plat_form_view");
                },
              ),
              RaisedButton(
                child: Text("Painter_page"),
                onPressed: () {
                  Navigator.pushNamed(context, "Painter_page");
                },
              ),
              RaisedButton(
                child: Text("portrait_danmu_page"),
                onPressed: () {
                  Navigator.pushNamed(context, "portrait_danmu_page");
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
