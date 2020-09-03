import 'package:flutter/material.dart';

class FlexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlexPage"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.red,
              padding: EdgeInsets.all(5.0),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              color: Colors.purple,
              padding: EdgeInsets.all(5),
            ),
            flex: 2,
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              padding: EdgeInsets.all(5.0),
            ),
          ),
        ],
      ),
    );
  }
}
