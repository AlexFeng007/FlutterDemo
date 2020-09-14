import 'package:flutter/material.dart';
import 'http_request.dart';

// ignore: camel_case_types
class request_page extends StatefulWidget {
  @override
  _request_pageState createState() => _request_pageState();
}

// ignore: camel_case_types
class _request_pageState extends State<request_page> {
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
              _requestData(0);
            },
          ),
        ),
      ),
    );
  }

  _requestData(int pageIndex) async {
    final requestUrl = "http://www.baidu.com";
    final result = await http_request.request(requestUrl);
    print("result is $result");
  }
}
