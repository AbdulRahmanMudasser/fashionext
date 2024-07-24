import 'package:flutter/material.dart';

class BottomNavNotifier with ChangeNotifier {
  int _index = 0;

  // Getter to get value
  int get index => _index;

  // Setter to set value
  void setIndex(int index) {
    _index = index;
    notifyListeners();
  }
}
