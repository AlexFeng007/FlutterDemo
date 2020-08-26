import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello,Container'),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(left: 130, top: 0, right: 0, bottom: 0),
          child: Text(
            "Hello container",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          transform: Matrix4.rotationZ(0.5),
        ),
      ),
    );
  }
}
