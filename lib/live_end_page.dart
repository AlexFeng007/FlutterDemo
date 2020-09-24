import 'dart:math';
import 'package:flutter/material.dart';
import 'PrimaryButton.dart';

class live_end_page extends StatefulWidget {
  @override
  _live_end_pageState createState() => _live_end_pageState();
}

class _live_end_pageState extends State<live_end_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                top: 155,
                height: 25,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "直播已结束",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  textAlign: TextAlign.center,
                )),
            Positioned(
              top: 195,
              width: 60,
              height: 60,
              child: Image.asset(
                "images/avatar_head.png",
                height: 60,
              ),
            ),
            Positioned(
              top: 260,
              width: MediaQuery.of(context).size.width,
              height: 21,
              child: Text(
                "PGTwo",
                style: TextStyle(fontSize: 15, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
                top: 296,
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(width: 1, color:Color(0x0F040320)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0x0F040320),
                        Color(0xFF040320),
                      ],
                    ),

                  ),
                  child: buildLiveDatas(),
                )),
            Positioned(
              top: 405,
              left: 15,
              right: 15,
              height: 50,
              child: PrimaryButton(
                title: "返回首页",
                onPressed: () {
                  print("返回首页");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLiveDatas() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: 50,
          width: 75,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 0,
                height: 21,
                width: 75,
                child: Text(
                  "00:45:29",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                bottom: 0,
                height: 18.5,
                width: 75,
                child: Text(
                  "直播时长",
                  style: TextStyle(color: Color(0x66FFFFFF), fontSize: 13),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
        Container(
          height: 50,
          width: 75,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 0,
                height: 21,
                width: 75,
                child: Text(
                  "1235",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                bottom: 0,
                height: 18.5,
                width: 75,
                child: Text(
                  "收获密豆",
                  style: TextStyle(color: Color(0x66FFFFFF), fontSize: 13),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
        Container(
          height: 50,
          width: 75,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 0,
                width: 75,
                height: 21,
                child: Text(
                  "231",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                bottom: 0,
                width: 75,
                height: 18.5,
                child: Text("观看人数",
                    style: TextStyle(color: Color(0x66FFFFFF), fontSize: 13),
                    textAlign: TextAlign.center),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
