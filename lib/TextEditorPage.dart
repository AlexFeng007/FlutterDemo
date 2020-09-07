import 'package:flutter/material.dart';

class TextEditorPage extends StatefulWidget {
  @override
  _TextEditorPageState createState() => _TextEditorPageState();
}

class _TextEditorPageState extends State<TextEditorPage> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    _controller
      ..addListener(() {
        print("${_controller.text.toUpperCase()}");
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EditPage"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: Container(
            width: 250,
            height: 40,
            child: TextField(
                controller: _controller,
                onChanged: (String value) {
                  print("the value has been changed");
                },
                onEditingComplete: () {
                  print("EditingComplete");
                },
                onSubmitted: (String value) {
                  print(value);
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 15, top: 5),
                  fillColor: Color(0x30cccccc),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0x00FF0000)),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  hintText: 'QQ号/手机号/邮箱',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0x00000000)),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                ))),
      ),
    );
  }
}

////TextField Sample Demo
//class TextFieldTest extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          title: Text("TextField"),
//        ),
//        body: TextField(
//          controller:TextEditingController(),//监听textfiled的变化
//          keyboardType:TextInputType.text,//键盘类型
//          textInputAction:TextInputAction.join,//键盘回车键类型
//          textCapitalization:TextCapitalization.words,//文字类型,首字母大写/全部大写或全小写等
//          autofocus: true, //是否自动激活
//          maxLines:1,//最大行数
//          maxLength:10,//最大文本长度
//          maxLengthEnforced:false,//超过最大长度后,是否还能输入
//          onChanged:(String value){
//            print(value);
//          },//文本变化时调用
//          onEditingComplete:(){
//            print("EditingComplete");
//          },//编辑完成时调用
//          onSubmitted:(String value){
//            print(value);
//          },//
//          // inputFormatters: //文本限制器,譬如强制文本最大长度
//          // obscureText:true,
//          decoration: InputDecoration(
//            icon: Icon(Icons.search), //左侧icon
//            labelText: "labelText", //顶部标题
//            helperText: "helperText",//底部描述
//            hintText: "hintText",//提示
//            // errorText:"errorText",//不为空时,helperText会被替换掉,并修改labelTextStyle
//            hasFloatingPlaceholder: false, //是否隐藏labelText
//
//            /**属性名中有 Icon,譬如prefixIcon 只有在textField被激活时才会显示 */
//            prefixIcon: Icon(Icons.bookmark), //前缀
//            prefix: Icon(Icons.book), //前缀
//            // prefixText: "prefixText",//prefixText prefix 不能共存
//
//            suffixIcon: Icon(Icons.cancel),//后缀
//            suffix: Icon(Icons.cancel),//后缀
//            // suffixText: "suffixText",//suffixText suffix 不能共存
//
//            counter: Text("counter"),//右下角显示,如计数
//            // counterText:"counterText",//有counter时不显示counterText
//
//            filled:true, //如果为true,Container的背景色为fillColor
//
//            //errorBorder,focusedBorder,disabledBorder,enabledBorder,border 分别为错误,激活,不可用,可用.nomal时的边框
//
//          ),
//        ));
//  }
//}
