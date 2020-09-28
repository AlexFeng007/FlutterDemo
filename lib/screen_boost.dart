import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Screen_boost_page extends StatelessWidget {
  Screen_boost_page({Key key}) : super(key: key);

  String generateMd5(String data) {
    //MD5固定算法
    var content = new Utf8Encoder().convert(data);
//    var digest = md5.convert(content);
//    return hex.encode(digest.bytes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('demo')),
      body: ListView.builder(
          itemCount: 30,// 列表元素个数
          itemBuilder: (context, index) {
            //反复迭代计算MD5
            String str = '1234567890abcdefghijklmnopqrstuvwxyz';
            for(int i = 0;i<10000;i++) {
              str = generateMd5(str);
            }
            return ListTile(title: Text("Index : $index"), subtitle: Text(str));
          }// 列表项创建方法
      ),
    );
  }
}
