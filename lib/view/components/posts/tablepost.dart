import 'package:coffeeproject/view/pages/waiter/sub_order/sub_order_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTablePost extends StatelessWidget {
  final String tableNumber;
  final Color tableStatusColor;
  const MyTablePost(
      {super.key, required this.tableNumber, required this.tableStatusColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        boxShadow: [
          BoxShadow(
            color: tableStatusColor,
            blurRadius: 1,
            spreadRadius: 6,
          )
        ],
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 221, 217, 210),
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushAndRemoveUntil(
              PageRouteBuilder(
                  pageBuilder: (_, __, ___) => SubOrderScreen(),
                  transitionDuration: const Duration(milliseconds: 500),
                  transitionsBuilder: (_, a, __, c) => FadeTransition(
                        opacity: a,
                        child: c,
                      )),
              (route) => false);
        },
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.coffee, color: Colors.grey),
                  Icon(
                    Icons.table_bar,
                    color: Colors.grey,
                    size: 25.5,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(thickness: 0.5, color: Colors.grey[500])),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text(
                        tableNumber,
                        style: GoogleFonts.alice(fontSize: 50),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Divider(thickness: 0.5, color: Colors.grey[500])),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(thickness: 0.5, color: Colors.grey[500])),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
