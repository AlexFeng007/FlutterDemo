import 'package:flutter/material.dart';

class danmu_view_page extends StatefulWidget {
  @override
  _danmu_view_pageState createState() => _danmu_view_pageState();
}

class _danmu_view_pageState extends State<danmu_view_page> {
  List msgData = [
    {'lv': 30, 'name': '迪丽热巴', 'text': '我觉得这个主播长得还行叭~'},
    {'lv': 80, 'name': '古力娜扎', 'text': '不如本小姐💗'},
    {'lv': 3, 'name': '吴彦祖', 'text': '给我吴某人一个面子，你们两个不用争了，论颜值在座各位都是**，你们懂我的意思吧'},
    {'lv': 50, 'name': '吴亦凡', 'text': '？？？'},
    {'lv': 3, 'name': '岳云鹏', 'text': '你们这些人好像傻fufu的亚子...'},
    {
      'lv': 50,
      'name': '郑爽',
      'text':
          '我来刷个屏幕~~~~666666666666666666666666666     ~~~~666666666666666666666666666'
    },
    {'lv': -1, 'name': '超管', 'text': '楼上的黄牌警告一次！！！小心封号'},
    {'lv': 50, 'name': '郑爽', 'text': '超管大哥我错了 o(TωT)o '},
    {
      'lv': -1,
      'name': '超管',
      'text': '请各位按照直播间规定，文明发言，切勿刷屏，违者将封禁ID三天小黑屋反省，谢谢合作！'
    },
    {'lv': 30, 'name': '迪丽热巴', 'text': '好的'},
    {'lv': 80, 'name': '古力娜扎', 'text': '好哒'},
    {'lv': 3, 'name': '吴彦祖', 'text': '我长的帅我说了算'},
    {'lv': 50, 'name': '吴亦凡', 'text': '哦'},
    {'lv': 30, 'name': '迪丽热巴', 'text': '我觉得这个主播长得还行叭~'},
    {'lv': 80, 'name': '古力娜扎', 'text': '不如本小姐💗'},
    {'lv': 3, 'name': '吴彦祖', 'text': '给我吴某人一个面子，你们两个不用争了，论颜值在座各位都是**，你们懂我的意思吧'},
    {'lv': 50, 'name': '吴亦凡', 'text': '？？？'},
    {'lv': 3, 'name': '岳云鹏', 'text': '你们这些人好像傻fufu的亚子...'},
    {
      'lv': 50,
      'name': '郑爽',
      'text':
          '我来刷个屏幕~~~~666666666666666666666666666     ~~~~666666666666666666666666666'
    },
    {'lv': -1, 'name': '超管', 'text': '楼上的黄牌警告一次！！！小心封号'},
    {'lv': 50, 'name': '郑爽', 'text': '超管大哥我错了 o(TωT)o '},
    {
      'lv': -1,
      'name': '超管',
      'text': '请各位按照直播间规定，文明发言，切勿刷屏，违者将封禁ID三天小黑屋反省，谢谢合作！'
    },
    {'lv': 30, 'name': '迪丽热巴', 'text': '好的'},
    {'lv': 80, 'name': '古力娜扎', 'text': '好哒'},
    {'lv': 3, 'name': '吴彦祖', 'text': '我长的帅我说了算'},
    {'lv': 50, 'name': '吴亦凡', 'text': '哦'},
  ]; // 弹幕消息列表

  List<Map> giftBannerView = []; // 礼物横幅列表JSON
  ScrollController _chatController = ScrollController(); // 弹幕区滚动Controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("danmuView"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border(
              top: BorderSide(color: Color(0xffeeeeee), width: 1),
              bottom: BorderSide(color: Color(0xffeeeeee), width: 1)),
        ),
        child: Stack(
          children: <Widget>[
            ListView(
              controller: _chatController,
              padding: EdgeInsets.all(10),
              children: _chatMsg(),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _chatMsg() {
    var msgList = List<Widget>();

    msgData.forEach((item) {
      var isAdmin = item['lv'] > 0;
      var msgBoart = <Widget>[
        RichText(
          text: TextSpan(
              style: TextStyle(color: Color(0xff666666), fontSize: 16.0),
              children: [
                TextSpan(
                  text:
                      '''${isAdmin ? '''          ''' : ''}${item['name']}: ''',
                  style: TextStyle(
                      color: !isAdmin ? Colors.red : Color(0xff999999)),
                ),
                TextSpan(
                  text: item['text'],
                ),
              ]),
        ),
      ];

      if (item['lv'] > 0) {
        msgBoart.insert(
          0,
          Positioned(
            child: Image.asset("images/lv/${item['lv']}.png", height: 18),
          ),
        );
      }

      msgList.addAll([
        Stack(
          children: msgBoart,
        ),
        Padding(padding: EdgeInsets.only(bottom: 5))
      ]);
    });
    return msgList;
  }
}
