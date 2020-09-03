import 'package:flutter/material.dart';
//import 'package:flutter_video/common/http/http.dart';

class MyTabBarPageView extends StatefulWidget {
  _MyTabBarPageViewState createState() => _MyTabBarPageViewState();
}

class _MyTabBarPageViewState extends State<MyTabBarPageView>
    with TickerProviderStateMixin {
  final List<String> _tabValues = [
    '语文',
    '英语',
    '化学',
    '物理',
    '数学',
    '生物',
    '体育',
    '经济',
  ];

  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabValues.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tabBar'),
        bottom: TabBar(
          tabs: _tabValues.map((e) {
            return Text(e);
          }).toList(),
          controller: _tabController,
          indicatorColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.tab,
          isScrollable: true,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.black,
          indicatorWeight: 2.0,
          labelStyle: TextStyle(height: 2),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _tabValues.map((e) {
          return Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text(e),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          );
        }).toList(),
      ),
    );
  }
}
