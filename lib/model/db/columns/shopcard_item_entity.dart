import 'package:hive/hive.dart';
part 'shopcard_item_entity.g.dart';

@HiveType(typeId: 3)
class ShopCardItemEntity {
  @HiveField(0)
  final String totalPrice;
  @HiveField(1)
  final int count;
  @HiveField(2)
  final int shopCardId;
  @HiveField(3)
  final int productId;

  ShopCardItemEntity(
      this.totalPrice, this.count, this.shopCardId, this.productId);
}
