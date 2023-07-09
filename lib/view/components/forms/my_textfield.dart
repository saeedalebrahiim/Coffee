import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key,
      this.controller,
      required this.hintText,
      required this.obscureText,
      required this.borderColor,
      required this.focusBorderColor,
      required this.fillColor,
      required this.hintColor,
      required this.borderRadius,
      required this.fontSize,
      required this.borderSize,
      required this.focusBorderSize,
      required this.width,
      required this.height,
      required this.cursorColor,
      required this.fontWeight});

  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;
  final Color borderColor, focusBorderColor, fillColor, hintColor, cursorColor;
  final BorderRadius borderRadius;
  final double fontSize, borderSize, focusBorderSize, width, height;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        width: width,
        height: height,
        child: TextFormField(
            cursorColor: cursorColor,
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                    color: hintColor,
                    fontSize: fontSize,
                    fontWeight: fontWeight),
                enabledBorder: OutlineInputBorder(
                    borderRadius: borderRadius,
                    borderSide:
                        BorderSide(color: borderColor, width: borderSize)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: focusBorderColor, width: focusBorderSize)),
                fillColor: fillColor,
                filled: true)),
      ),
    );
  }
}
