import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier {
  int _count = 42;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}
