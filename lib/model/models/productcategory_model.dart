import 'package:flutter/material.dart';

class ProductCategoryModel {
  final Function()? onTap;
  final IconData categoryIcon;
  final String engName, perName;
  ProductCategoryModel({
    required this.categoryIcon,
    required this.engName,
    required this.perName,
    this.onTap,
  });
}
