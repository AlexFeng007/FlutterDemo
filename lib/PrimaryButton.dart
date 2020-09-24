import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 主按钮: 蓝色渐变按钮样式
class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double fontSize;
  final double height;

  PrimaryButton({@required this.title, this.onPressed, this.fontSize, this.height = 50});

  @override
  Widget build(BuildContext context) {
    BoxDecoration decoration;
    if (onPressed == null) {
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
            Color.fromRGBO(107, 83, 255, 1),
            Color.fromRGBO(0, 44, 255, 1),
          ],
        ),
      );
    }

    return Container(
      height: height,
      decoration: decoration,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        highlightColor: Color.fromRGBO(0, 44, 255, 1),
        disabledColor: Color.fromRGBO(255, 255, 255, 0.3),
        disabledTextColor: Colors.black,
        textColor: Colors.white,
        padding: EdgeInsets.zero,
        child: Container(
          child: Text(
            title,
            style: TextStyle(
              fontSize: fontSize == null ? 18 : fontSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
