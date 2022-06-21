import 'package:flutter/material.dart';

import 'package:food_delivery_app/models/food.dart';

class Counter extends ChangeNotifier {
  int _purchase = 0;

  List<Food> _listPfoods = [];

 
  int get purchase => _purchase;

  List<Food> get listfood => _listPfoods;
  void purchaseinc(int A) {
    _purchase = _purchase + A;
    notifyListeners();
  }


  void listFoodAdds(Food A) {
    _listPfoods.add(A);
    // notifyListeners();
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
