import 'package:flutter/material.dart';
import 'package:sneakershop/models/shoe.dart';

class Cart extends ChangeNotifier {
  final List<Shoe> _shoeShop = [
    Shoe(
        name: 'name',
        price: 'price',
        imagePath: 'lib/images/n.png',
        description: 'description'),
    Shoe(
        name: 'name',
        price: 'price',
        imagePath: 'lib/images/n.png',
        description: 'description'),
    Shoe(
        name: 'name',
        price: 'price',
        imagePath: 'lib/images/n.png',
        description: 'description')
  ];

  final List<Shoe> _userCart = [];

  List<Shoe> get getShoeList => _shoeShop;

  List<Shoe> get getUserCart => _userCart;

  void addToCart(Shoe shoe) {
    _userCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe) {
    _userCart.remove(shoe);
    notifyListeners();
  }
}
