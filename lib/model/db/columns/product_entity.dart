import 'package:hive_flutter/hive_flutter.dart';
part 'product_entity.g.dart';

@HiveType(typeId: 1)
class ProductEntity {
  @HiveField(0)
  late String imagePath;
  @HiveField(1)
  late String mainTitle;
  @HiveField(2)
  late List<String> tags;
  @HiveField(3)
  late String id;
  @HiveField(4)
  late String categoryId;
  @HiveField(5)
  late String price;

  ProductEntity({
    required this.imagePath,
    required this.mainTitle,
    required this.tags,
    required this.id,
    required this.categoryId,
    required this.price,
  });
}
