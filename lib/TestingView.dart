import 'package:flutter/material.dart';

class TestingView extends StatefulWidget {
  _TestingViewState createState() => _TestingViewState();
}

class _TestingViewState extends State<TestingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:
            BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(title: Text('首页'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text('书籍'), icon: Icon(Icons.book)),
          BottomNavigationBarItem(
              title: Text('我的'), icon: Icon(Icons.perm_identity)),
        ]),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 200.0,
              backgroundColor: Colors.black,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('复仇者联盟'),
                background: Image.network(
                  'http://img.haote.com/upload/20180918/2018091815372344164.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 80.0,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Card(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.primaries[(index % 18)],
                      child: Text('老妹'),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
