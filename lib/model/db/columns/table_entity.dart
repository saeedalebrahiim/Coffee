import 'package:hive_flutter/hive_flutter.dart';
part 'table_entity.g.dart';

@HiveType(typeId: 2)
class TableEntity {
  @HiveField(0)
  late String number;
  @HiveField(1)
  late String tableStatus;
  @HiveField(2)
  late String orderStatus;
  @HiveField(3)
  late List<String> productsId;
  @HiveField(4)
  late String id;

  TableEntity({
    required this.number,
    required this.orderStatus,
    required this.productsId,
    required this.tableStatus,
    required this.id,
  });
}
