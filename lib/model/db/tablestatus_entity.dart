import 'package:hive/hive.dart';
part 'tablestatus_entity.g.dart';

@HiveType(typeId: 0)
class TableStatusEntity {
  @HiveField(0)
  final String tableNumber;
  @HiveField(1)
  final String statusString;

  TableStatusEntity(
    this.tableNumber,
    this.statusString,
  );
}
