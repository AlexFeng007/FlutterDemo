import 'package:flutter/material.dart';
import 'FBHttpRequest.dart';

class RequestPage extends StatefulWidget {
  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RequestPage"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          child: RaisedButton(
            child: Text("Request"),
            onPressed: () {
              requestData(0);
            },
          ),
        ),
      ),
    );
  }


  requestData(int pageIndex) async {
      final requestUrl = "http://www.baidu.com";
      final result = await FBHttpRequest.request(requestUrl);
      print("result is $result");
  }

}
