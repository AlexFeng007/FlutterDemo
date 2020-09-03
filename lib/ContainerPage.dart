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
          child: Text('Hello，Flutter Container'),
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          transform: Matrix4.rotationZ(0.3),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 5.0),
              color: Colors.grey,
              image: DecorationImage(
                  image: AssetImage('images/fengbo.jpeg'), fit: BoxFit.cover)),
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
