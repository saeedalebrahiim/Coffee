import 'package:hive/hive.dart';
part 'tablestatus_entity.g.dart';

@HiveType(typeId: 4)
class TableEntity {
  @HiveField(0)
  final String tableNumber;
  @HiveField(1)
  final String statusString;

  TableEntity(
    this.tableNumber,
    this.statusString,
  );
}
