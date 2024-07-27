import 'package:flutter/cupertino.dart';

class CategoryNotifier with ChangeNotifier {
  String category = '';
  int _id = 0;

  /// Setter to set category
  void setCategory(String category, int id) {
    this.category = category;
    _id = id;
    notifyListeners();
  }

  /// Getter to get id
  int get id => _id;

  /// Setter to set id
  void setId(int id) {
    _id = id;
  }
}