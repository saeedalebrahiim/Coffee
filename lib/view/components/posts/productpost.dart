import 'package:coffeeproject/model/models/product_model.dart';
import 'package:coffeeproject/view/components/forms/my_addtocard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MyProductPost extends StatefulWidget {
  final double? imageWidth, imageHeight, borderWidth, titleSize, stringSize;
  final String imagePath, mainTitle, stringOne, tags;
  final ProductModel product;
  final Function()? onPressed;

  final Color? postColor, postBorderColor;
  final BorderRadius? borderRadius;
  const MyProductPost({
    super.key,
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
    required this.product,
    this.onPressed,
    required this.productId,
  });
  final String productId;

  @override
  State<MyProductPost> createState() => _MyProductPostState();
}

class _MyProductPostState extends State<MyProductPost> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 240,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: widget.borderRadius ?? BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 2)),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Center(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.vertical,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(widget.product.imagePath),
                          fit: BoxFit.cover)),
                  width: widget.imageWidth ?? 100,
                  height: widget.imageHeight ?? 100,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(widget.product.mainTitle,
                    style: GoogleFonts.dosis(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "${widget.product.stringOne} T",
                  style: GoogleFonts.dosis(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 15,
                ),
                MyAddToCard(onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
