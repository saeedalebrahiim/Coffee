import 'package:coffeeproject/model/db/box/boxes.dart';
import 'package:coffeeproject/model/db/columns/category_entity.dart';
import 'package:coffeeproject/model/db/columns/product_entity.dart';
import 'package:coffeeproject/model/db/columns/table_entity.dart';
import 'package:coffeeproject/model/enums/order_status.dart';
import 'package:coffeeproject/model/enums/table_status.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';

initializer() async {
  Boxes.categoryBox = await Hive.openBox("categoryBox");
  Boxes.productBox = await Hive.openBox("productBox");
  Boxes.tableBox = await Hive.openBox("tableBox");

  if (Boxes.categoryBox.isEmpty) {
    Boxes.categoryBox
        .add(CategoryEntity(name: "Hot Drinks", id: const Uuid().v1()));
    Boxes.categoryBox
        .add(CategoryEntity(name: "Cold Drinks", id: const Uuid().v1()));
  }
  if (Boxes.productBox.isEmpty) {
    String hotDrinksID = Boxes.categoryBox.values
        .firstWhere((element) => element.name == "Hot Drinks")
        .id;
    String coldDrinksID = Boxes.categoryBox.values
        .firstWhere((element) => element.name == "Cold Drinks")
        .id;
    Boxes.productBox.add(
      ProductEntity(
          imagePath: "lib/assets/images/11.jpg",
          mainTitle: "Latte",
          tags: ["latte"],
          id: const Uuid().v1(),
          categoryId: hotDrinksID,
          price: "100.000"),
    );
    Boxes.productBox.add(
      ProductEntity(
          imagePath: "lib/assets/images/11.jpg",
          mainTitle: "Ice Latte",
          tags: ["latte"],
          id: const Uuid().v1(),
          categoryId: coldDrinksID,
          price: "120.000"),
    );
  }
  if (Boxes.tableBox.isEmpty) {
    Boxes.tableBox.addAll([
      TableEntity(
          id: const Uuid().v1(),
          number: "1",
          orderStatus: OrderStatus.ready.name,
          productsId: [],
          tableStatus: TableStatus.empty.name),
      TableEntity(
          id: const Uuid().v1(),
          number: "2",
          orderStatus: OrderStatus.ready.name,
          productsId: [],
          tableStatus: TableStatus.empty.name),
      TableEntity(
          id: const Uuid().v1(),
          number: "3",
          orderStatus: OrderStatus.ready.name,
          productsId: [],
          tableStatus: TableStatus.empty.name),
      TableEntity(
          id: const Uuid().v1(),
          number: "4",
          orderStatus: OrderStatus.ready.name,
          productsId: [],
          tableStatus: TableStatus.empty.name),
    ]);
  }
}
