import 'package:flutter/material.dart';
import 'package:pro2/pages/notificationPage.dart';

class Counter {
  int value = 0;
  String name = 'value';
  void increment() {
    value += 1;
  }
}

class CountersNotifier extends Counter with ChangeNotifier {
  @override
  void increment() {
    super.increment();
    notifyListeners();
  }

  void nombrar(value) {
    name = value;
    notifyListeners();
  }
}
