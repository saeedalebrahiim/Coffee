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
                  color: const Color.fromARGB(255, 37, 36, 34),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          const MyDivider(
              thickness: 0.5,
              horizontalPadding: 10,
              dividerColor: Color.fromARGB(255, 37, 36, 34)),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              engName,
              style: GoogleFonts.dosis(
                  color: const Color.fromARGB(255, 37, 36, 34),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
