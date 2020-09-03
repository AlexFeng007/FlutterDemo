import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  _StackPage createState() => _StackPage();
}

class _StackPage extends State<StackPage> {
  var _index;

  @override
  void initState() {
    super.initState();
    _index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('StackPage'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: <Widget>[
            IndexedStack(
              index: _index,
              children: <Widget>[
                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.fastfood,
                      size: 60,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.cake,
                      size: 60,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.yellow,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.local_cafe,
                      size: 60,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.fastfood),
                    onPressed: () {
                      setState(() {
                        _index = 0;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.cake),
                    onPressed: () {
                      setState(() {
                        _index = 1;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.local_cafe),
                    onPressed: () {
                      setState(() {
                        _index = 2;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
