import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
part 'productcategory_entity.g.dart';

@HiveType(typeId: 0)
class ProductCategoryEntity {
  @HiveField(0)
  final String engName;

  @HiveField(1)
  final Function()? onTap;
  @HiveField(2)
  final IconData categoryIcon;

  ProductCategoryEntity(
    this.onTap,
    this.engName,
    this.categoryIcon,
  );
}
