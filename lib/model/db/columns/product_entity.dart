import 'package:hive/hive.dart';
part 'product_entity.g.dart';

@HiveType(typeId: 0)
class ProductEntity {
  @HiveField(0)
  final String mainTitle;
  @HiveField(1)
  final String stringOne;
  @HiveField(2)
  final int productCount;
  @HiveField(3)
  final String imagePath;
  @HiveField(4)
  final String tags;

  ProductEntity(this.mainTitle, this.stringOne, this.productCount,
      this.imagePath, this.tags);
}
