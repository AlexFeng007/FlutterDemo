import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:alexflutter/Counter.dart';

class ProviderPage extends StatefulWidget {
  _ProviderPageState createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {
  @override
  Widget build(BuildContext context) {
    Counter mycounter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("ProviderTesing"),
        //backgroundColor: Colors.black,
        actions: <Widget>[
          FlatButton(
              child: Text('下一页'),
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SecondPage();
                  })))
        ],
      ),
      body: Center(
        child: Text("${mycounter.count}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mycounter.add();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondPage"),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Text("${Provider.of<Counter>(context).count}"),
          height: 200,
          width: 200,
          color: Colors.red,
        ),
      ),
    );
  }
}
