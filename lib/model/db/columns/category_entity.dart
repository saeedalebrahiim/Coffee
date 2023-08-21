import 'package:hive_flutter/hive_flutter.dart';
part 'category_entity.g.dart';

@HiveType(typeId: 0)
class CategoryEntity {
  @HiveField(0)
  late String name;
  @HiveField(1)
  late String id;

  CategoryEntity({
    required this.name,
    required this.id,
  });
}
