import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  _StackPage createState() => _StackPage();
}

class _StackPage extends State<StackPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('StackPage'),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
          Container(
            height: 170,
            width: 170,
            color: Colors.blue,
          ),
          Container(
            height: 140,
            width: 140,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}
