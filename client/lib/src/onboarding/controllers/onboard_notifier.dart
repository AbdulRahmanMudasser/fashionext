import 'package:flutter/widgets.dart';

class OnBoardNotifier extends ChangeNotifier {
  /// Selected Page
  int _selectedPage = 0;

  /// Getter to Get Selected Page
  int get selectedPage => _selectedPage;

  /// Setter to Set Newly Selected Page / Change Page
  set changePage(int page) {
    _selectedPage = page;
    notifyListeners();
  }
}
