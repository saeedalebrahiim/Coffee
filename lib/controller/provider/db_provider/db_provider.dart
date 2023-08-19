import 'package:coffeeproject/model/models/product_model.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  final List<ProductModel> _shop = [
    ProductModel(
        imagePath: 'lib/assets/images/11.jpg',
        mainTitle: 'Latte',
        stringOne: '140/000',
        tags: '#Milk'),
    ProductModel(
        imagePath: 'lib/assets/images/22.jpg',
        mainTitle: 'Tea',
        stringOne: '120/000',
        tags: '#Hot'),
    ProductModel(
        imagePath: 'lib/assets/images/33.jpg',
        mainTitle: 'Espresso',
        stringOne: '200/000',
        tags: '#Energy')
  ];

  List<ProductModel> _userCart = [];
  List<ProductModel> get coffeeShop => _shop;
  List<ProductModel> get userCart => _userCart;
  void addItemToCart(ProductModel coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  void removeItemFromCart(ProductModel coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
