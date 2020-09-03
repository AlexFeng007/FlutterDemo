import 'package:flutter/material.dart';

class WrapPage extends StatefulWidget {
  _WrapPageState createState() => _WrapPageState();
}

class _WrapPageState extends State<WrapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WrapPage'),
        backgroundColor: Colors.black,
      ),
      body: Wrap(
          direction: Axis.horizontal,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 10,
          runSpacing: 20,
          children: List.generate(10, (index) {
            double w = 50.0 + 10 * index;
            return Container(
              color: Colors.primaries[index],
              height: 50,
              width: w,
              child: Text('$index'),
            );
          })),
    );
  }
}
