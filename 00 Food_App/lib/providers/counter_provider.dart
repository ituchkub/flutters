import 'package:flutter/material.dart';

import 'package:food_delivery_app/models/food.dart';

class Counter extends ChangeNotifier {
  int _purchase = 0;

  List<Food> _listPfoods = [];

  double _AllP = 0;

  double get AllP => _AllP;

  set AllP(double AllP) {
    _AllP = AllP;
  }

  int get purchase => _purchase;

  List<Food> get listfood => _listPfoods;

  void listFoodAdds(Food food) {
    _listPfoods.add(food);

    countFood();
    notifyListeners();
  }

  void listFoodRemove(int index) {
    _listPfoods.removeAt(index);

    countFood();
    notifyListeners();
  }

  void resetall() {
    _AllP = 0; 

     _listPfoods = [];
  countFood();
    print(_AllP);
    notifyListeners();
  }

  void countFood() {
    _purchase = 0;
    _AllP = 0;

    for (var food in _listPfoods) {
      _purchase = food.order + _purchase;
      _AllP = _AllP + food.order * food.price.toDouble();
    }
  }

  // void decrement() {
  //   _count--;
  //   notifyListeners();
  // }

  // void reset() {
  //   _count = 0;
  //   notifyListeners();
  // }
}
