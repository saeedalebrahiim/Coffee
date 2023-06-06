import 'package:coffeeproject/model/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductsState extends ChangeNotifier {
  static List<ProductModel> products = [];
  static List<dynamic> submitedProducts = [];
  static String ctgNameFa = "";
  static String ctgNameEn = "";

  void handleProducts(List<ProductModel> newVal) {
    products = newVal;
    notifyListeners();
  }

  void handleSumbitProducts(newVal) {
    submitedProducts.add(newVal);
    notifyListeners();
  }

  void handleSumbitProductsRemove(newVal) {
    submitedProducts.removeWhere((e) => e = newVal);
    notifyListeners();
  }
}
