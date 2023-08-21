import 'package:coffeeproject/model/db/columns/category_entity.dart';
import 'package:coffeeproject/model/db/columns/product_entity.dart';
import 'package:coffeeproject/model/db/columns/table_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Boxes {
  static late Box<TableEntity> tableBox;
  static late Box<ProductEntity> productBox;
  static late Box<CategoryEntity> categoryBox;
}
