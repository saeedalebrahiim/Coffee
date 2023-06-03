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
                color: Color.fromARGB(255, 182, 167, 139),
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
                    color: Color.fromARGB(255, 182, 167, 139)),
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 34, 34, 34),
      ),
      backgroundColor: const Color.fromARGB(255, 231, 226, 218),
      body: Consumer<NavigationState>(
        builder: ((context, value, child) => myBody.elementAt(selectedIndex)),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 40,
        animationDuration: const Duration(milliseconds: 300),
        index: selectedIndex,
        backgroundColor: Color.fromARGB(255, 137, 112, 71),
        onTap: (value) {
          context.read<NavigationState>().changeIndex(value);
        },
        color: const Color.fromARGB(255, 34, 34, 34),
        items: [
          Icon(
            Icons.table_bar,
            color: Color.fromARGB(255, 137, 112, 71),
            size: 28,
          ),
          Icon(
            Icons.coffee,
            color: Color.fromARGB(255, 137, 112, 71),
            size: 28,
          ),
        ],
      ),
    );
  }
}
