import 'package:coffeeproject/view/components/forms/my_divider.dart';
import 'package:coffeeproject/view/components/my_gridview.dart';
import 'package:coffeeproject/view/components/posts/singleorderpost.dart';
import 'package:coffeeproject/view/components/posts/statusordertablepost.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllOrdersScreen extends StatelessWidget {
  AllOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 34, 34),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                MyDivider(
                    thickness: 0.5,
                    horizontalPadding: 12,
                    dividerColor: Color.fromARGB(255, 221, 217, 210)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    'Orders',
                    style: GoogleFonts.dosis(
                        color: Color.fromARGB(255, 221, 217, 210),
                        fontSize: 18),
                  ),
                ),
                MyDivider(
                    thickness: 0.5,
                    horizontalPadding: 12,
                    dividerColor: Color.fromARGB(255, 221, 217, 210))
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
