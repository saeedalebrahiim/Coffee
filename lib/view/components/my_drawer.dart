import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/pages/admin/adminpages/home/adminhome_screen.dart';
import 'package:coffeeproject/view/pages/bunker/bunker_screen.dart';
import 'package:coffeeproject/view/pages/cachier/cachier_orders/orderscreen.dart';
import 'package:coffeeproject/view/pages/client/products/productlistscreen.dart';
import 'package:coffeeproject/view/pages/waiter/tables/tablesscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      width: 240,
      child: ListView(
        children: [
          SizedBox(
            height: 180,
            child: DrawerHeader(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: const AssetImage('lib/assets/images/logo.png'),
                  width: 68,
                  height: 68,
                  color: blackColor,
                ),
                Text(
                  'M a r z o o c o',
                  style: GoogleFonts.dosis(
                      fontSize: 33,
                      color: blackColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: ListTile(
              leading: Icon(
                Icons.arrow_left,
                color: blackColor,
                size: 23,
              ),
              title: Text(
                textAlign: TextAlign.end,
                'MENU ',
                style: GoogleFonts.dosis(
                    color: blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const ProducstScreen(),
                        transitionDuration: const Duration(milliseconds: 500),
                        transitionsBuilder: (_, a, __, c) => FadeTransition(
                              opacity: a,
                              child: c,
                            )),
                    (route) => false);
              },
            ),
          ),
          Center(
            child: ListTile(
              leading: Icon(
                Icons.arrow_left,
                color: blackColor,
                size: 23,
              ),
              title: Text(
                textAlign: TextAlign.end,
                'WAITER',
                style: GoogleFonts.dosis(
                    color: blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => TablesScreen(),
                        transitionDuration: const Duration(milliseconds: 500),
                        transitionsBuilder: (_, a, __, c) => FadeTransition(
                              opacity: a,
                              child: c,
                            )),
                    (route) => false);
              },
            ),
          ),
          Center(
            child: ListTile(
              leading: Icon(
                Icons.arrow_left,
                color: blackColor,
                size: 23,
              ),
              title: Text(
                textAlign: TextAlign.end,
                'CACHIER',
                style: GoogleFonts.dosis(
                    color: blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => OrdersScreen(),
                        transitionDuration: const Duration(milliseconds: 500),
                        transitionsBuilder: (_, a, __, c) => FadeTransition(
                              opacity: a,
                              child: c,
                            )),
                    (route) => false);
              },
            ),
          ),
          Center(
            child: ListTile(
              leading: Icon(
                Icons.arrow_left,
                color: blackColor,
                size: 23,
              ),
              title: Text(
                textAlign: TextAlign.end,
                'ADMIN',
                style: GoogleFonts.dosis(
                    color: blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const AdminHomeScreen(),
                        transitionDuration: const Duration(milliseconds: 500),
                        transitionsBuilder: (_, a, __, c) => FadeTransition(
                              opacity: a,
                              child: c,
                            )),
                    (route) => false);
              },
            ),
          ),
          Center(
            child: ListTile(
              leading: Icon(
                Icons.arrow_left,
                color: blackColor,
                size: 23,
              ),
              title: Text(
                textAlign: TextAlign.end,
                'BUNKER',
                style: GoogleFonts.dosis(
                    color: blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const BunkerScreen(),
                        transitionDuration: const Duration(milliseconds: 500),
                        transitionsBuilder: (_, a, __, c) => FadeTransition(
                              opacity: a,
                              child: c,
                            )),
                    (route) => false);
              },
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: secondaryColor),
                  borderRadius: BorderRadius.circular(5),
                  color: primaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Log Out',
                        style: GoogleFonts.dosis(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
