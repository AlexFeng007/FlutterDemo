import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout"),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Image.network(
                "https://ossweb-img.qq.com/upload/adw/image/20191022/627bdf586e0de8a29d5a48b86700a790.jpeg"),
            Positioned(
              top: 20,
              right: 10,
              child: Image.network(
                  "https://ossweb-img.qq.com/upload/adw/image/20191022/627bdf586e0de8a29d5a48b86700a790.jpeg"),
              width: 200,
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
