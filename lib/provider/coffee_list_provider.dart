import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedCoffeeProvider =
    ChangeNotifierProvider<SelectedCoffee>((ref) => SelectedCoffee());

class SelectedCoffee extends ChangeNotifier {
  bool _isSelected;
  int _selectedIndex;
  SelectedCoffee([this._isSelected = true, this._selectedIndex = 0]);

  bool get isSelected => _isSelected;
  int get selectedIndex => _selectedIndex;

  void selectedSwitch(value) {
    _selectedIndex = value;

    if (selectedIndex == value) {
      _isSelected = true;
    } else {
      _isSelected = false;
    }
    notifyListeners();
  }
}

final selectedSizeProvider = ChangeNotifierProvider<SelectedSize>(
  (ref) => SelectedSize(),
);

class SelectedSize extends ChangeNotifier {
  bool _isSelected;
  int _selectedIndex;
  SelectedSize([this._isSelected = true, this._selectedIndex = 1]);

  bool get isSelected => _isSelected;
  int get selectedIndex => _selectedIndex;

  void selectedSwitch(int value) {
    _selectedIndex = value;

    if (selectedIndex == value) {
      _isSelected = true;
    } else {
      _isSelected = false;
    }
    notifyListeners();
  }
}
