import 'package:flutter/material.dart';
import 'dart:async';

class SafeAreaPage extends StatefulWidget {
  _SafeAreaPageState createState() => _SafeAreaPageState();
}

class _SafeAreaPageState extends State<SafeAreaPage> {
  StreamController<String> _streamController;

  @override
  void initState() {
    _streamController = StreamController<String>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Stream"),
      ),
      body: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            StreamBuilder(
                stream: _streamController.stream,
                builder: (context, snapshot) {
                  String name;
                  if (snapshot.hasData) {
                    name = snapshot.data;
                  } else {
                    name = 'haha';
                  }
                  return Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text(name),
                  );
                }),
            Container(
              height: 40,
              width: 120,
              child: RaisedButton(
                  child: Text('发送数据'),
                  color: Colors.blue,
                  onPressed: () {
                    _streamController.add('come on,fuck me');
                  }),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _streamController.close();
  }
}
