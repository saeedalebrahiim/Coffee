import 'package:coffeeproject/view/pages/waiter/orders/singleorderscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyStatusTablePost extends StatelessWidget {
  final String tableNumber, statusString;
  final Color statusColor;
  const MyStatusTablePost(
      {super.key,
      required this.tableNumber,
      required this.statusColor,
      required this.statusString});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1,
            spreadRadius: 3,
          )
        ],
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 221, 217, 210),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SingleOrderScreen(),
              ));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 2,
            ),
            Center(
              child: Text(
                tableNumber,
                style: GoogleFonts.dosis(
                    fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                      bottomEnd: Radius.circular(10),
                      bottomStart: Radius.circular(10)),
                  color: statusColor,
                ),
                child: Center(
                  child: Text(
                    statusString,
                    style: GoogleFonts.dosis(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 34, 34, 34)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
