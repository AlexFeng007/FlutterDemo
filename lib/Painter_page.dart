import 'dart:math';
import 'package:flutter/material.dart';

class WheelPainter extends CustomPainter {
  Paint getColoredPaint(Color color) {
    Paint paint = Paint(); //生成画笔
    paint.color = color; //设置画笔颜色
    return paint;
  }

  void paint(Canvas canvas, Size size) {
    double wheelSize = min(size.width, size.height) / 2;
    double nbElem = 6;
    double radius = (2 * pi) / nbElem;
    Rect boundingRect = Rect.fromCircle(
        center: Offset(wheelSize, wheelSize), radius: wheelSize); // 每次画1/6个圆弧
    canvas.drawArc(
        boundingRect, 0, radius, true, getColoredPaint(Colors.orange));
    canvas.drawArc(
        boundingRect, radius, radius, true, getColoredPaint(Colors.black38));
    canvas.drawArc(
        boundingRect, radius * 2, radius, true, getColoredPaint(Colors.green));
    canvas.drawArc(
        boundingRect, radius * 3, radius, true, getColoredPaint(Colors.red));
    canvas.drawArc(
        boundingRect, radius * 4, radius, true, getColoredPaint(Colors.blue));
    canvas.drawArc(
        boundingRect, radius * 5, radius, true, getColoredPaint(Colors.pink));
  } // 判断是否需要重绘，这里我们简单的做下比较即可

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
} //将饼图包装成一个新的控件

class Cake extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomPainter"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: CustomPaint(
          size: Size(200, 200),
          painter: WheelPainter(),
        ),
      ),
    );
  }
}