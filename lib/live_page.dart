import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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

                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                ),
                CupertinoButton(
                  color: Color(0xff0e88eb),
                  child: Text('Play Stream'),
                  onPressed: () {

                  },
                ),

              ],
            ),
          ),
      ),
    );
  }
}
