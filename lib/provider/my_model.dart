
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _count = 0;
  get count => _count;

  void add() {
    _count++;
    notifyListeners();
  }
}