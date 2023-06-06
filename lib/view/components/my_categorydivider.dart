import 'package:coffeeproject/view/components/forms/my_divider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCategoryDivider extends StatelessWidget {
  final String engName, faName;
  const MyCategoryDivider(
      {super.key, required this.engName, required this.faName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              engName,
              style: GoogleFonts.dosis(
                  color: Color.fromARGB(255, 221, 217, 210),
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
          ),
          MyDivider(
              thickness: 0.5,
              horizontalPadding: 10,
              dividerColor: Color.fromARGB(255, 221, 217, 210)),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              faName,
              style: TextStyle(
                  color: Color.fromARGB(255, 221, 217, 210),
                  fontWeight: FontWeight.bold,
                  fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}
