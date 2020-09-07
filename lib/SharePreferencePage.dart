import 'package:flutter/material.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:alexflutter/ToastUtil.dart';

import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class SharePreferencePage extends StatefulWidget {
  _SharePreferencePageState createState() => _SharePreferencePageState();
}

class _SharePreferencePageState extends State<SharePreferencePage> {
  final String username = "Username";
  final _usernameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    save() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString(username, _usernameController.value.text.toString());
    }

    Future<String> get() async {
      var keyName = "Username";
      var getUsername;

      SharedPreferences prefs = await SharedPreferences.getInstance();
      getUsername = prefs.getString(keyName);
      return getUsername;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("SharedPreferences"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 10.0),
                  icon: Icon(Icons.perm_identity),
                  labelText: "请输入用户名",
                  helperText: "注册时填写的名字"),
            ),
            RaisedButton(
              color: Colors.blueAccent,
              child: Text("存储"),
              onPressed: () {
                save();
              },
            ),
            RaisedButton(
              color: Colors.greenAccent,
              child: Text("获取"),
              onPressed: () {
                Future<String> userName = get();
                userName.then((String userName) {
                  print("the name is ${username}");
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
