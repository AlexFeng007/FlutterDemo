import 'package:flutter/material.dart';

class Fraction {
  int numerator;
  int denominator;

    //构造方法1
    // Fraction(int number, int denominator) {
    //    this.numerator = numerator;
    //    this.denominator = denominator;
    //  }

   //构造方法2
   // Fraction(int numerator, int denominator);

    Fraction.init():numerator=1,denominator=2;

}

class Listener {
  void onComplete(){}
  void onFailure(){}

  void call() {
    print('默认调用了Call函数');
  }
}

class MyListener implements Listener{
  MyListener(){

  }

  @override
  void onComplete() {
    // TODO: implement onComplete
  }

  @override
  void onFailure() {
    // TODO: implement onFailure
  }

  @override
  void call() {
    // TODO: implement call
  }
}

bool isZero(int number) {
  return number == 0;
}

bool isZeroShortVersion(int number) => number == 0;
void printInfo(int number,Function check) => print("$number is Zero: ${check(number)}");


void enableFlags({bool bold,bool hidden}) => print("$bold, $hidden");


class Point {
  num x, y;
  static num factor = 0;

  Point(this.x, this.y);

  void printInfo() => print('($x, $y)');
  static void printZValue() => print('$factor');
}
var p = new Point(100, 200);


class bigPoint {
  num x = 0;
  num y = 0;
  void printInfo () => print('($x, $y)');
}

//Vector 继承自Point
class Vector extends bigPoint
{
  num z = 0;
  @override
  void printInfo() {
    // TODO: implement printInfo
    print('($x,$y,$z)');
  }
}

var head = Vector();


///  Dart 特性之购物车
///
class Item {
  double price;
  String name;

  Item(name,price) {
    this.name = name;
    this.price = price;
  }
}

class ShoppingCart {
   String name;
   DateTime date;
   String code;
   List<Item> bookings;

   price() {
     double sum = 0.0;
     for (var i in bookings) {
       sum += i.price;
     }
     return sum;
   }

   ShoppingCart(this.name,this.code):date = DateTime.now();

   getInfo () => ''' 
    购物车信息:
    ----------------------------- 
    用户名: $name 
    优惠码: $code 
    总价: $price 
    Date: $date
    -----------------------------
   ''';
   
   void main() {
     ShoppingCart sc = ShoppingCart("张三", '123456');
     sc.bookings = [Item('苹果',10.0), Item('鸭梨',20.0)];
     print(sc.getInfo());
   }
}