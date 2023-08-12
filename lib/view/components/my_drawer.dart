import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/pages/admin/adminpages/home/adminhome_screen.dart';
import 'package:coffeeproject/view/pages/waiter/orders/orderscreen.dart';
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
      backgroundColor: secondaryColor,
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
                  color: primaryColor,
                ),
                Text(
                  'M a r z o o c o',
                  style: GoogleFonts.dosis(
                      fontSize: 33,
                      color: primaryColor,
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
                color: primaryColor,
                size: 23,
              ),
              title: Text(
                textAlign: TextAlign.end,
                'MENU ',
                style: GoogleFonts.dosis(
                    color: primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProducstScreen(),
                    ));
              },
            ),
          ),
          Center(
            child: ListTile(
              leading: Icon(
                Icons.arrow_left,
                color: primaryColor,
                size: 23,
              ),
              title: Text(
                textAlign: TextAlign.end,
                'WAITER',
                style: GoogleFonts.dosis(
                    color: primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TablesScreen(),
                    ));
              },
            ),
          ),
          Center(
            child: ListTile(
              leading: Icon(
                Icons.arrow_left,
                color: primaryColor,
                size: 23,
              ),
              title: Text(
                textAlign: TextAlign.end,
                'CACHIER',
                style: GoogleFonts.dosis(
                    color: primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrdersScreen(),
                    ));
              },
            ),
          ),
          Center(
            child: ListTile(
              leading: Icon(
                Icons.arrow_left,
                color: primaryColor,
                size: 23,
              ),
              title: Text(
                textAlign: TextAlign.end,
                'ADMIN',
                style: GoogleFonts.dosis(
                    color: primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AdminHomeScreen(),
                    ));
              },
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          // Column(
          //   children: [
          //     Container(
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(5),
          //         color: primaryColor,
          //       ),
          //       child: Padding(
          //         padding: const EdgeInsets.all(5),
          //         child: TextButton(
          //           onPressed: () {},
          //           child: Text('Log Out',
          //               style: GoogleFonts.dosis(
          //                   color: Colors.red,
          //                   fontSize: 18,
          //                   fontWeight: FontWeight.bold)),
          //         ),
          //       ),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
