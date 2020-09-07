import 'package:flutter/material.dart';
import 'package:synchronized/synchronized.dart';
import 'dart:isolate';

class SynchronizedPage extends StatefulWidget {
  @override
  _SynchronizedPageState createState() => _SynchronizedPageState();
}

class _SynchronizedPageState extends State<SynchronizedPage> {
  var _lock = Lock();
  bool _bCounting = false;
  var counter = 0;

  @override
  void initState() {
    for (int i = 0; i < 100; i++) {
      _testLock();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("synchronized"),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  _testLock() {
    debugPrint("${DateTime.now().toString()}$_bCounting");
    _lock.synchronized(() async {
      counter++;
      debugPrint("1:in lock. changed to: $counter");

      _lock.synchronized(() async{
        counter++;
        debugPrint("2:in lock. changed to: $counter");
      });
    });
    addIsolateOne();
    addIsolateTwo();
  }

  addIsolateOne() async {
    ReceivePort receivePort = ReceivePort();

    counter++;
    debugPrint("1:Isolate. changed to: $counter");
  }

  addIsolateTwo() async {
    counter++;
    debugPrint("2:Isolate. changed to: $counter");
  }
}
