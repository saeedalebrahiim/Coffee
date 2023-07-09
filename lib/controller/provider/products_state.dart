import 'package:coffeeproject/model/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductsState extends ChangeNotifier {
  static List<ProductModel> products = [];
  static List<String> submitedProducts = [];
  static String ctgNameFa = '';
  static String ctgNameEn = '';

  void handleProducts(List<ProductModel> newVal) {
    products = newVal;
    notifyListeners();
  }

  void enFa(enVal, faVal) {
    ctgNameFa = enVal;
    ctgNameEn = faVal;
    notifyListeners();
  }

  void handleSumbitProducts(newVal) {
    submitedProducts.addAll(newVal);
    notifyListeners();
  }

  void handleSumbitProductsRemove(newVal) {
    submitedProducts.removeWhere((e) => e = newVal);
    notifyListeners();
  }
}
