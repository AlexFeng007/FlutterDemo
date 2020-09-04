import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'EventBusUtils.dart';
import 'EventStringContent.dart';

class EventBusPage extends StatefulWidget {
  _EventBusPage createState() => _EventBusPage();
}

class _EventBusPage extends State<EventBusPage> {
  String _content = 'fengbo';
  double _max = 80.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EventBus"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: () {
              EventBusUtils.getInstance()
                  .on<StringContentEvent>()
                  .listen((event) {
                print(event.str);
                setState(() {
                  _content = event.str;
                });
              });

              EventBusUtils.getInstance()
                  .on<DoubleContentEvent>()
                  .listen((event) {
                print(event.max);
                _max = event.max;
              });

              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new EventBusRouteDemo()));
            },
          ),
        ],
      ),
      body: Center(
        child: Text(_content + _max.toString()),
      ),
    );
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

//  @override
//  void dispose() {
//    // TODO: implement dispose
//    super.dispose();
//    EventBusUtils.getInstance().destroy();
//  }
}

class EventBusRouteDemo extends StatefulWidget {
  @override
  _EventBusRouteDemoState createState() => _EventBusRouteDemoState();
}

class _EventBusRouteDemoState extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EventBusRouteDemo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('EventBusRouteDemo'),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                EventBusUtils.getInstance().fire(DoubleContentEvent(2.2));
                Navigator.of(context).pop();
              }),
        ),
        body: Center(
          child: Text('EventBusRouteDemo'),
        ),
      ),
    );
  }
}
