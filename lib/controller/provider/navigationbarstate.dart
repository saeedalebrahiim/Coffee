import 'package:coffeeproject/model/globals/globals.dart';
import 'package:flutter/material.dart';

class NavigationState extends ChangeNotifier {
  void changeIndex(int value) {
    selectedIndex = value;
    notifyListeners();
  }
}
