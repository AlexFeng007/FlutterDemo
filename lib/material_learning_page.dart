import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dio/dio.dart';

class material_page extends StatefulWidget {
  @override
  _material_pageState createState() => _material_pageState();
}

class _material_pageState extends State<material_page> {
  int count = 0;
  int total = 0;

  CancelToken _cancelToken = CancelToken();
  String _videoSavePath;

  @override
  void initState() {
    super.initState();
    this.count = 35;
    this.total = 35;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MaterilaPage"),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.black,
        child: Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            padding: EdgeInsets.all(0.0),
            width: 370,
            height: 173,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon:
                          Icon(CupertinoIcons.clear, color: Colors.transparent),
                      onPressed: () {},
                    ),
                    Text(
                      '视频下载',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black),
                    ),
                    IconButton(
                      icon: Icon(CupertinoIcons.clear),
                      onPressed: () {
                        //_cancelToken.cancel();
                        //Application.pop(context);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    '由于系统限制，你可以通过发送视频的形式来给好友分享。',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color.fromARGB(136, 136, 136, 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                _buildButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton() {
    bool downloadDone = count != null && total == count && total != 0;
    BoxDecoration decoration;
    if (downloadDone == false) {
      decoration = BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      );
    } else {
      decoration = BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(107, 83, 255, 1),
            Color.fromARGB(0, 44, 255, 1),
          ],
        ),
      );
    }

    String t = (total / 1024 / 1024).toStringAsFixed(0);
    String p = (total == 0 ? 0 : (count / total) * 100).toStringAsFixed(0);

    return Container(
      height: 40,
      width: 240,
      decoration: decoration,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        highlightColor: Color.fromARGB(0, 44, 255, 1),
        disabledColor: Color.fromARGB(0, 0, 0, 1),
        disabledTextColor: Colors.black,
        textColor: Colors.white,
        padding: EdgeInsets.zero,
        child: Container(
          child: Text(
            downloadDone ? '分享给好友' : '下载中...${t}M/$p%',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
