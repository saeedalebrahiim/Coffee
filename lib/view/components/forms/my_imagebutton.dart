import 'package:flutter/material.dart';

class MyImageButton extends StatelessWidget {
  final String imagePath;
  final double height, width;
  final Color borderColor;
  final BorderRadius borderRadius;

  const MyImageButton(
      {super.key,
      required this.imagePath,
      required this.height,
      required this.width,
      required this.borderColor,
      required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: borderRadius,
        color: Colors.white,
      ),
      child: Image.asset(
        imagePath,
        width: width,
        height: height,
      ),
    );
  }
}
