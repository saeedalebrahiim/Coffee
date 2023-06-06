import 'package:coffeeproject/controller/provider/navigationbarstate.dart';
import 'package:coffeeproject/model/globals/globals.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({
    super.key,
    required this.myBody,
  });

  final List myBody;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: FaIcon(
                FontAwesomeIcons.mugHot,
                color: primaryColor,
                size: 12,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                'Terrace',
                style: GoogleFonts.dosis(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
            ),
          ],
        ),
        backgroundColor: backgroundColor,
      ),
      backgroundColor: backgroundColor,
      body: Consumer<NavigationState>(
        builder: ((context, value, child) => myBody.elementAt(selectedIndex)),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 40,
        animationDuration: const Duration(milliseconds: 300),
        index: selectedIndex,
        backgroundColor: primaryColor,
        onTap: (value) {
          context.read<NavigationState>().changeIndex(value);
        },
        color: backgroundColor,
        items: [
          Icon(
            Icons.table_bar,
            color: primaryColor,
            size: 28,
          ),
          Icon(
            Icons.coffee,
            color: primaryColor,
            size: 28,
          ),
        ],
      ),
    );
  }
}
