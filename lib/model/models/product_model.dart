import 'package:flutter/material.dart';

class ProductModel {
  final double? imageWidth, imageHeight, borderWidth, titleSize, stringSize;
  final String imagePath, mainTitle, stringOne, tags;

  final Color? postColor, postBorderColor;
  final BorderRadius? borderRadius;
  ProductModel({
    this.imageWidth,
    this.imageHeight,
    this.borderWidth,
    this.titleSize,
    this.stringSize,
    required this.imagePath,
    required this.mainTitle,
    required this.stringOne,
    this.postColor,
    this.postBorderColor,
    this.borderRadius,
    required this.tags,
  });
}
