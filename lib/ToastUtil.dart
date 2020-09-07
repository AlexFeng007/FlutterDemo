import 'package:bot_toast/bot_toast.dart';
import 'package:bot_toast/src/toast_widget/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToastUtil {
  static CancelFunc showText(
    String text,
  ) {
    dismiss();
    return BotToast.showCustomText(
        onlyOne: true,
        crossPage: true,
        wrapToastAnimation: loadingAnimation,
        toastBuilder: (CancelFunc cancelFunc) {
          return Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(245, 245, 249, 0.9),
                borderRadius: BorderRadius.circular(6),
              ),
              padding: EdgeInsets.all(15),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
          );
        });
  }

  static CancelFunc showLoading({String text}) {
    dismiss();
    return BotToast.showCustomLoading(toastBuilder: (CancelFunc cancelFunc) {
      return Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: Container(
            padding: EdgeInsets.all(25),
//            width: scale(90.0),
//            height: scale(90.0),
            color: Colors.black.withOpacity(0.3),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircularProgressIndicator(),
                text != null
                    ? Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                )
                    : Container(),
              ],
            ),
          ),
        ),
      );
    });
  }



  static void dismiss({bool showAnim = true}) {
    BotToast.closeAllLoading();
  }
}
