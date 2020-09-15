import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:alexflutter/init_sdk_page.dart';

class live_page extends StatefulWidget {
  @override
  _live_pageState createState() => _live_pageState();
}

class _live_pageState extends State<live_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterLive"),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
              ),
              CupertinoButton(
                color: Color(0xff0e88eb),
                child: Text('Publish Stream'),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return InitPage(true);
                  }));
                },
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
              ),
              CupertinoButton(
                color: Color(0xff0e88eb),
                child: Text('Pull Stream'),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return InitPage(false);
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
