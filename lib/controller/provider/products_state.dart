import 'package:coffeeproject/model/db/box/boxes.dart';
import 'package:coffeeproject/model/db/columns/category_entity.dart';
import 'package:coffeeproject/model/db/columns/product_entity.dart';
import 'package:coffeeproject/model/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ProductsState extends ChangeNotifier {
  static List<ProductEntity> products = [];
  static CategoryEntity choosedCategory = CategoryEntity(id: "", name: "");

  changeChoosedCtg(CategoryEntity newVal) {
    choosedCategory = newVal;
    notifyListeners();
  }

  changeProductsByChangedCategory() async {
    Boxes.productBox = await Hive.openBox("productBox");
    List<ProductEntity> gg = Boxes.productBox.values
        .where((element) => element.categoryId == choosedCategory.id)
        .toList();
    products = gg;
    notifyListeners();
  }
}
