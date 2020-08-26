import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyImagePage"),
      ),
      body: Center(
        child:
            Image(image: AssetImage("assets/images/fengbo.jpeg"), width: 200.0),
      ),
    );
  }
}
