//import 'dart:async';
//
//import 'package:dio/dio.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter_video/common/plugins/qiniu_video/qiniu_video_plugin.dart';
//import 'package:flutter_video/route/application.dart';
//import 'package:flutter_video/route/me/me_route.dart';
//import 'package:flutter_video/utils/utils.dart';
//import 'package:flutter_video/widgets/public/image_text_center_button.dart';
//
//class BottomLivingWidget extends StatelessWidget {
//  static Future show(BuildContext context) {
//    return showModalBottomSheet(
//      context: context,
//      backgroundColor: Colors.transparent,
//      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//      builder: (BuildContext context) {
//        return BottomLivingWidget();
//      },
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return _livingWidget(context);
//  }
//
//  StreamController<String> _streamController =
//  StreamController<String>.broadcast();
//
//  getPublishUrl(String roomId) async {
//    var result = await new Dio()
//        .request("https://api-demo.qnsdk.com/v1/live/stream/" + roomId);
//    _streamController.add(result.data);
//  }
//
//  Widget _livingWidget(BuildContext context) {
//    return StreamBuilder<String>(
//        stream: _streamController.stream,
//        builder: (context, snapshot) {
//          if(snapshot.hasData){
//            return Container(
//              decoration: BoxDecoration(
//                color: rgba(4, 3, 32, 1),
//                borderRadius: BorderRadius.only(
//                    topLeft: Radius.circular(20), topRight: Radius.circular(20)),
//              ),
//              height: 220.0,
//              child: new Column(
//                children: [
//                  Row(
//                    children: [
//                      Container(
//                        margin: EdgeInsets.only(
//                            left: (scale(375) - 230) / 2, top: 30, right: 110),
//                        child: ImageTextCenterButton(
//                          image: Container(
//                            decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(33),
//                              boxShadow: [
//                                BoxShadow(
//                                  color: Color(0x44c0d7).withOpacity(0.6),
//                                  offset: Offset(0, 3),
//                                  spreadRadius: 0,
//                                  blurRadius: 6,
//                                )
//                              ],
//                            ),
//                            child: Image.asset(
//                              img('living/living.png'),
//                              width: 66,
//                              height: 66,
//                            ),
//                          ),
//                          space: 10,
//                          title: Text(
//                            '开启直播',
//                            style: TextStyle(
//                              fontSize: font(15),
//                              fontWeight: Normal,
//                              color: Colors.white,
//                            ),
//                          ),
//                          onTap: () {
//                            //ToastUtil.showText("暂未开放");
//                            if (isLogin(context) == false) {
//                              Application.push(context, MeRoute.userLogin);
//                              return;
//                            } else if (getUser(context).realName() == false) {
//                              ToastUtil.showText('请先实名认证后再试');
//                            } else {
//                              QiNiuVideoPlugin.pushLiveVideo(context,snapshot.data);
//                              Application.pop(context);
//                            }
//                          },
//                        ),
//                      ),
//                      Container(
//                        margin: EdgeInsets.only(top: 30),
//                        child: ImageTextCenterButton(
//                          image: Container(
//                            decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(33),
//                              boxShadow: [
//                                BoxShadow(
//                                  color: Color(0x6236ff).withOpacity(0.6),
//                                  offset: Offset(0, 3),
//                                  spreadRadius: 0,
//                                  blurRadius: 6,
//                                )
//                              ],
//                            ),
//                            child: Image.asset(
//                              img('living/video.png'),
//                              width: 66,
//                              height: 66,
//                            ),
//                          ),
//                          title: Text(
//                            '发布视频',
//                            style: TextStyle(
//                              fontSize: font(15),
//                              fontWeight: Normal,
//                              color: Colors.white,
//                            ),
//                          ),
//                          space: 10,
//                          onTap: () {
//                            if (isLogin(context) == false) {
//                              Application.push(context, MeRoute.userLogin);
//                              return;
//                            } else if (getUser(context).realName() == false) {
//                              ToastUtil.showText('请先实名认证后再试');
//                            } else {
//                              QiNiuVideoPlugin.pushVideoEditPage(context);
//                              Application.pop(context);
//                            }
//                          },
//                        ),
//                      ),
//                    ],
//                  ),
//                  SafeArea(
//                    child: Container(
//                      margin: EdgeInsets.only(top: 30),
//                      width: 22,
//                      height: 22,
//                      child: GestureDetector(
//                        child: Image.asset(img("login/close.png")),
//                        onTap: () {
//                          Navigator.pop(context);
//                        },
//                      ),
//                    ),
//                  ),
//                ],
//              ),
//            );
//          }else{
//            return Container(
//              decoration: BoxDecoration(
//                color: rgba(4, 3, 32, 1),
//                borderRadius: BorderRadius.only(
//                    topLeft: Radius.circular(20), topRight: Radius.circular(20)),
//              ),
//              height: 220.0,
//              child: new Column(
//                children: [
//                  Row(
//                    children: [
//                      Container(
//                        margin: EdgeInsets.only(
//                            left: (scale(375) - 230) / 2, top: 30, right: 110),
//                        child: ImageTextCenterButton(
//                          image: Container(
//                            decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(33),
//                              boxShadow: [
//                                BoxShadow(
//                                  color: Color(0x44c0d7).withOpacity(0.6),
//                                  offset: Offset(0, 3),
//                                  spreadRadius: 0,
//                                  blurRadius: 6,
//                                )
//                              ],
//                            ),
//                            child: Image.asset(
//                              img('living/living.png'),
//                              width: 66,
//                              height: 66,
//                            ),
//                          ),
//                          space: 10,
//                          title: Text(
//                            '开启直播',
//                            style: TextStyle(
//                              fontSize: font(15),
//                              fontWeight: Normal,
//                              color: Colors.white,
//                            ),
//                          ),
//                          onTap: () {
//                            //ToastUtil.showText("暂未开放");
//                            if (isLogin(context) == false) {
//                              Application.push(context, MeRoute.userLogin);
//                              return;
//                            } else if (getUser(context).realName() == false) {
//                              ToastUtil.showText('请先实名认证后再试');
//                            } else {
//                              QiNiuVideoPlugin.pushLiveVideo(context,"heel");
//                              Application.pop(context);
//                            }
//                          },
//                        ),
//                      ),
//                      Container(
//                        margin: EdgeInsets.only(top: 30),
//                        child: ImageTextCenterButton(
//                          image: Container(
//                            decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(33),
//                              boxShadow: [
//                                BoxShadow(
//                                  color: Color(0x6236ff).withOpacity(0.6),
//                                  offset: Offset(0, 3),
//                                  spreadRadius: 0,
//                                  blurRadius: 6,
//                                )
//                              ],
//                            ),
//                            child: Image.asset(
//                              img('living/video.png'),
//                              width: 66,
//                              height: 66,
//                            ),
//                          ),
//                          title: Text(
//                            '发布视频',
//                            style: TextStyle(
//                              fontSize: font(15),
//                              fontWeight: Normal,
//                              color: Colors.white,
//                            ),
//                          ),
//                          space: 10,
//                          onTap: () {
//                            if (isLogin(context) == false) {
//                              Application.push(context, MeRoute.userLogin);
//                              return;
//                            } else if (getUser(context).realName() == false) {
//                              ToastUtil.showText('请先实名认证后再试');
//                            } else {
//                              QiNiuVideoPlugin.pushVideoEditPage(context);
//                              Application.pop(context);
//                            }
//                          },
//                        ),
//                      ),
//                    ],
//                  ),
//                  SafeArea(
//                    child: Container(
//                      margin: EdgeInsets.only(top: 30),
//                      width: 22,
//                      height: 22,
//                      child: GestureDetector(
//                        child: Image.asset(img("login/close.png")),
//                        onTap: () {
//                          Navigator.pop(context);
//                        },
//                      ),
//                    ),
//                  ),
//                ],
//              ),
//            );
//          }
//        }
//    );
//  }
//}
