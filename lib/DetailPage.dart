import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context).settings.arguments;
    print(args);
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: new Column(
        children: <Widget>[
          Text("Detail Page"),
          Text("id:${args['id']}"),
          Text("id:${args['title']}"),
          Text("id:${args['subtitle']}")
        ],
      ),
    );
  }
}
