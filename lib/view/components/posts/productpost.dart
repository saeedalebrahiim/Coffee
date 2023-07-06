import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProductPost extends StatelessWidget {
  final double imageWidth, imageHeight, borderWidth, titleSize, stringSize;
  final String imagePath, mainTitle, stringOne, tags, perTitle;

  final Color postColor, postBorderColor;
  final BorderRadius borderRadius;
  const MyProductPost({
    super.key,
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
    required this.tags,
    required this.perTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Container(
        height: 240,
        width: 200,
        decoration: BoxDecoration(
            color: postColor,
            borderRadius: borderRadius,
            border: Border.all(color: postBorderColor, width: borderWidth)),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(imagePath), fit: BoxFit.cover)),
                width: imageWidth,
                height: imageHeight,
              ),
              SizedBox(
                height: 5,
              ),
              Text(mainTitle,
                  style: GoogleFonts.dosis(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              SizedBox(
                height: 5,
              ),
              Text(perTitle,
                  style: GoogleFonts.notoNaskhArabic(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  )),
              SizedBox(
                height: 5,
              ),
              Text(
                stringOne + " T",
                style: GoogleFonts.dosis(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                tags,
                style: GoogleFonts.dosis(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
