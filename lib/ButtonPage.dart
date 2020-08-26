import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Button page"),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("RaiseButton"),
              onPressed: () {},
            ),
            FlatButton(
              child: Text("FlatButton"),
              color: Colors.blue,
              onPressed: () {},
            ),
            OutlineButton(
              child: Text("OutLineButton"),
              onPressed: () {},
            ),
            IconButton(icon: Icon(Icons.add), onPressed: () {})
          ],
        ));
  }
}
