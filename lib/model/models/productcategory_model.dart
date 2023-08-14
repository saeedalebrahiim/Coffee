import 'package:flutter/material.dart';

class ProductCategoryModel {
  final Function()? onTap;
  final IconData categoryIcon;
  final String engName;
  ProductCategoryModel({
    required this.categoryIcon,
    required this.engName,
    this.onTap,
  });
}
