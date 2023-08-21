import 'package:coffeeproject/model/db/box/boxes.dart';
import 'package:coffeeproject/model/db/columns/table_entity.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TableState extends ChangeNotifier {
  static List<TableEntity> tables = [];
  getTables() async {
    Boxes.tableBox = await Hive.openBox("tableBox");
    tables = Boxes.tableBox.values.toList();
  }

  changeStatus({
    required String tableId,
    required String newOrderStatus,
    required String newtableStatus,
  }) async {
    Boxes.tableBox = await Hive.openBox("tableBox");
    TableEntity table =
        Boxes.tableBox.values.firstWhere((element) => element.id == tableId);
    var index = Boxes.tableBox.values.toList().indexOf(table);
    Boxes.tableBox.putAt(
      index,
      TableEntity(
          id: table.id,
          number: table.number,
          orderStatus: newOrderStatus,
          productsId: table.productsId,
          tableStatus: newtableStatus),
    );
  }
}
