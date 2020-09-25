import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';

class portrait_danmu_page extends StatefulWidget {
  @override
  _portrait_danmu_pageState createState() => _portrait_danmu_pageState();
}

class _portrait_danmu_pageState extends State<portrait_danmu_page>
    with AfterLayoutMixin {
  ScrollController _scrollController = ScrollController();
  Timer _timer;

  var chatDic = List();
  var userName;
  var message;
  var timerCount = 0;
  double endofset;
  double maxofset;

  bool isHasMetal = true; //是否含有勋章

  List msgData = [
    {'name': '满舒克', 'message': '做我的猫~🐱🐱🐱🐱🐱🐱🐱🐱🐱'},
    {'name': '迪丽热巴', 'message': '我觉得这个主播长得还行叭~，我觉得这个主播长得还行叭～'},
    {'name': '古力娜扎', 'message': '不如本小姐💗'},
    {
      'name': '吴彦祖',
      'message': '给我吴某人一个面子，你们两个不用争了，论颜值在座各位都是**，你们懂我的意思吧,🎁🎁🎁🎁🎁🎁🎁🎁🎁'
    },
    {'name': '吴亦凡', 'message': '？？？'},
    {'name': '满舒克', 'message': '做我的猫~🐱🐱🐱🐱🐱🐱🐱🐱🐱🐱🐱🐱🐱🐱🐱🐱🐱🐱'},
    {'name': '岳云鹏', 'message': '你们这些人好像傻fufu的亚子...'},
    {'name': '迪丽热巴', 'message': '我觉得这个主播长得还行叭,我觉得这个主播长得还行叭~'},
    {'name': '古力娜扎', 'message': '不如本小姐💗,我觉得这个主播长得还行叭'},
    {'name': '吴彦祖', 'message': '给我吴某人一个面子，你们两个不用争了，论颜值在座各位都是**，你们懂我的意思吧'},
    {'name': '吴亦凡', 'message': '？？？你们这些人好像傻fufu的亚子,你们这些人好像傻fufu的亚子.'},
    {'name': '岳云鹏', 'message': '你们这些人好像傻fufu的亚子...'},
  ]; // 弹幕消息列表

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.endofset = 0.0;
    this.maxofset = 0.0;

    //监听滑动
    _scrollController.addListener(() {
      //print('滑动结束的位置'+ _scrollController.position.pixels.toString());
      this.endofset = _scrollController.position.pixels;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("portrait_danmu_page"),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 370,
            child: Container(
              color: Colors.black,
            ),
          ),
          Positioned(
            bottom: 0,
            height: 370,
            width: MediaQuery.of(context).size.width,
            child: Container(
              color: Colors.black,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  _buildDanmu(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    this._addTimer();
  }

  Widget _buildDanmu() {
    return Container(
      color: Colors.yellow,
      constraints: BoxConstraints(
        maxHeight: 370,
      ),
      child: ListView.builder(
        controller: _scrollController,
        itemCount: this.chatDic.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        // 关键
        itemBuilder: (BuildContext context, int index) {
          return _buildItem(index);
        },
      ),
    );
  }

  Widget _buildItem(int index) {
    if (index == 0) {
      return _buildTips();
    } else {
      return _buildItems(index);
    }
  }

  Widget _buildTips() {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
          decoration: BoxDecoration(
            color: Color(0x4d000000),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            '直播内容包含任何低俗、暴露和涉黄内容，账号会被封禁；安全部门会24小时巡查哦～,直播内容包含任何低俗、暴露和涉黄内容，账号会被封禁；安全部门会24小时巡查哦～账号会被封禁；安全部门会24小时巡查哦～,直播内容包含任何低俗、暴露和涉黄内容，账号会被封禁；安全部门会24小时',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItems(index) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
          decoration: BoxDecoration(
            color: Color(0x4d000000),
            borderRadius: BorderRadius.circular(6),
          ),
          child: _buildItemRow(index - 1),
        ),
      ),
    );
  }

  Widget _buildItemRow(index) {
    Map map = this.chatDic[index];
    String name = map['name'];
    String message = map['message'];

    List<InlineSpan> metalList = [];
    if (this.isHasMetal) {
      metalList
          .add(WidgetSpan(child: Image.asset("images/lv/30.png", height: 18)));

      metalList.add(
        WidgetSpan(
          child: SizedBox(width: 5),
        ),
      );

      metalList.add(
        WidgetSpan(child: Image.asset("images/lv/50.png", height: 18)),
      );

      metalList.add(
        WidgetSpan(
          child: SizedBox(width: 5),
        ),
      );
    }

    metalList.add(
      TextSpan(
          text: '${name + ' '}:',
          style: TextStyle(
            color: Color(0xff3263FF),
          )),
    );

    metalList.add(
      TextSpan(text: message, style: TextStyle(color: Colors.white)),
    );

    var msgBoard = RichText(
      text: TextSpan(
        children: [

          WidgetSpan(
            child: Visibility(
              visible: true,
              child: Image.asset("images/lv/50.png", height: 18),
            ),
          ),

          WidgetSpan(
            child: Visibility(
              visible: true,
              child: SizedBox(width: 5),
            ),
          ),

          TextSpan(
              text: '${name + ' '}:',
              style: TextStyle(
                color: Color(0xff3263FF),
              )),
          TextSpan(text: message, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
    return msgBoard;
  }

  void _addTimer() {
    this._timer = Timer.periodic(Duration(milliseconds: 1000), (timer) {
      this.timerCount++;
      int index = this.timerCount % 5;
      this.userName = this.msgData[index]['name'];
      this.message = this.msgData[index]['message'];

      var chatMap = Map();
      chatMap["name"] = this.userName;
      chatMap["message"] = this.message;

      setState(() {
        this.chatDic.add(chatMap);
      });

      if (this.endofset < this.maxofset) {
        //滑动距离没有到底部，让用户看弹幕，不要自动跳动到最后一条
        return;
      } else {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 1),
          curve: Curves.easeOut,
        );
        this.maxofset = _scrollController.position.maxScrollExtent;
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    if (this._timer != null) {
      this._timer?.cancel();
      this._timer = null;
    }
  }
}
