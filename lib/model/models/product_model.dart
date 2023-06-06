import 'package:flutter/material.dart';

class ProductModel {
  final Function()? onTapAdd, onTapRemove;
  final double imageWidth, imageHeight, borderWidth, titleSize, stringSize;
  final String imagePath, mainTitle, stringOne;

  final Color postColor, postBorderColor;
  final BorderRadius borderRadius;
  ProductModel(
      {required this.imageWidth,
      required this.imageHeight,
      required this.borderWidth,
      required this.titleSize,
      required this.stringSize,
      required this.imagePath,
      required this.mainTitle,
      required this.stringOne,
      required this.postColor,
      required this.postBorderColor,
      required this.borderRadius,
      this.onTapAdd,
      this.onTapRemove});
}
