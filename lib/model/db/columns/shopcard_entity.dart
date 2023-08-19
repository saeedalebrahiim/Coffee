import 'package:hive/hive.dart';
part 'shopcard_entity.g.dart';

@HiveType(typeId: 2)
class ShopCardEntity {
  @HiveField(0)
  final String totalPrice;
  @HiveField(1)
  final int tableId;
  @HiveField(2)
  final int count;

  ShopCardEntity({
    required this.count,
    required this.totalPrice,
    required this.tableId,
  });
}
