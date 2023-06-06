import 'package:coffeeproject/view/components/forms/my_addtocard.dart';
import 'package:coffeeproject/view/components/forms/my_textfield.dart';
import 'package:flutter/material.dart';

class MyProductPost extends StatelessWidget {
  final Function()? onTapAdd, onTapRemove;
  final double imageWidth, imageHeight, borderWidth, titleSize, stringSize;
  final String imagePath, mainTitle, stringOne;

  final Color postColor, postBorderColor;
  final BorderRadius borderRadius;
  const MyProductPost(
      {super.key,
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
      this.onTapAdd,
      this.onTapRemove});

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
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: AddToCard(
                onTapAdd: onTapAdd,
                onTapRemove: onTapRemove,
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Text(mainTitle,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: titleSize)),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      stringOne,
                      style: TextStyle(fontSize: stringSize),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                MyTextField(
                    hintText: 'describe ...',
                    obscureText: false,
                    borderColor: Color.fromARGB(255, 34, 34, 34),
                    focusBorderColor: Color.fromARGB(255, 34, 34, 34),
                    fillColor: Color.fromARGB(255, 221, 217, 210),
                    hintColor: Colors.black,
                    borderRadius: borderRadius,
                    fontSize: 10,
                    borderSize: 0.5,
                    focusBorderSize: 0.5,
                    width: 150,
                    height: 30,
                    cursorColor: Colors.black,
                    fontWeight: FontWeight.bold)
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
