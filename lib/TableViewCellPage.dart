import 'package:flutter/material.dart';

class TableViewCellPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("cell Page"),
      ),
      body: Column(
        children: <Widget>[
          NewsCell(),
          NewsCell(),
          NewsCell(),
          NewsCell(),
        ],
      ),
    );
  }
}

class NewsCell extends StatelessWidget {
  Widget get _cellContentView {
    return GestureDetector(
      onTap: () {
        print("tap cell");
      },
      child:
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hey,My name is fengbo,Hey,My name is fengboHey,My name is fengboHey,My name is fengboHey,My name is fengboHey,My name is fengboHey,My name is fengbo',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color(0xff111111),
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis, //超过三行，省略号
              ),
              Container(
                width: 50.0,
                height: 20,
                margin: EdgeInsets.only(top: 6.0),
                child: ButtonTheme(
                  buttonColor: Color(0xff1C64CF),
                  shape: StadiumBorder(),
                  child: RaisedButton(
                    onPressed: () => print('test'),
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      '听新闻',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 10.0),
        Container(
          height: 85,
          width: 115,
          margin: EdgeInsets.only(top: 3.0),
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(5.0),
              image: DecorationImage(
                image: AssetImage('images/fengbo.jpeg'),
                fit: BoxFit.cover,
              )),
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.0,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: _cellContentView,
          ),
          Container(
            margin: EdgeInsets.only(top: 4.0),
            color: Color(0xffeaeaea),
            constraints: BoxConstraints.expand(height: 4.0),
          )
        ],
      ),
    );
  }
}
