import 'package:flutter/material.dart';

class MyOrdersPost extends StatelessWidget {
  final Function()? onPressed;
  final double imageWidth, imageHeight, borderWidth, titleSize, stringSize;
  final String imagePath, mainTitle, stringOne, count;

  final Color postColor, postBorderColor;
  final BorderRadius borderRadius;
  const MyOrdersPost(
      {super.key,
      this.onPressed,
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
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
            color: postColor,
            borderRadius: borderRadius,
            border: Border.all(color: postBorderColor, width: borderWidth)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(mainTitle,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: titleSize)),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  stringOne,
                  style: TextStyle(fontSize: stringSize),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  count + ' : تعداد',
                  style: TextStyle(
                      fontSize: stringSize, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage(imagePath))),
              width: imageWidth,
              height: imageHeight,
            ),
          ],
        ),
      ),
    );
  }
}
