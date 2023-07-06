import 'package:flutter/material.dart';

class SingleOrderModel {
  final Function()? onPressed;
  final double imageWidth, imageHeight, borderWidth, titleSize, stringSize;
  final String imagePath, mainTitle, stringOne, count;

  final Color postColor, postBorderColor, orderStatusColor;
  final BorderRadius borderRadius;
  const SingleOrderModel(
      {this.onPressed,
      required this.imageWidth,
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
      required this.count,
      required this.orderStatusColor});
}
