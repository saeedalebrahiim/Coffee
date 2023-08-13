import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCategoryPost extends StatelessWidget {
  final Function()? onTap;
  final IconData categoryIcon;
  final String engName, perName;
  const MyCategoryPost({
    super.key,
    required this.categoryIcon,
    required this.engName,
    required this.perName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
            width: 2,
            style: BorderStyle.solid,
            color: const Color.fromARGB(255, 37, 36, 34),
          )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: InkWell(
            onTap: onTap,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                FaIcon(
                  categoryIcon,
                  size: 40,
                  color: const Color.fromARGB(255, 37, 36, 34),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  engName,
                  style: GoogleFonts.dosis(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: const Color.fromARGB(255, 37, 36, 34)),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyCategoryPostAdmin extends StatelessWidget {
  final Function()? onTap;
  final IconData categoryIcon;
  final String engName, perName;
  const MyCategoryPostAdmin({
    super.key,
    required this.categoryIcon,
    required this.engName,
    required this.perName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 221, 217, 210),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: InkWell(
            onTap: onTap,
            child: Column(
              children: [
                FaIcon(
                  categoryIcon,
                  size: 34,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  engName,
                  style: GoogleFonts.dosis(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  perName,
                  style: GoogleFonts.notoKufiArabic(
                      fontWeight: FontWeight.bold, fontSize: 10),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
