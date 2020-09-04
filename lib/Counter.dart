import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _count;

  Counter(this._count);

  void add() {
    _count++;
    notifyListeners();
  }

  get count => _count;
}
