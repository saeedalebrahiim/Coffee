import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCategoryPost extends StatelessWidget {
  final Function()? onTap;
  final IconData categoryIcon;
  final String engName, perName;
  MyCategoryPost({
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
        color: Color.fromARGB(255, 221, 217, 210),
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
                  size: 30,
                ),
                SizedBox(
                  height: 9,
                ),
                Text(
                  engName,
                  style: GoogleFonts.dosis(
                      fontWeight: FontWeight.bold, fontSize: 12),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  perName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
