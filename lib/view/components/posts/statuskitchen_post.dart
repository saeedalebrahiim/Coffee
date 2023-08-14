import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/components/dialogs/status_dialog.dart';
import 'package:coffeeproject/view/components/forms/my_statusbutton.dart';
import 'package:coffeeproject/view/pages/kitchen/singleorder_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyStatusKitchenTablePost extends StatelessWidget {
  final String tableNumber, statusString;
  final Color statusColor;
  const MyStatusKitchenTablePost(
      {super.key,
      required this.tableNumber,
      required this.statusColor,
      required this.statusString});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: blackColor),
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 221, 217, 210),
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushAndRemoveUntil(
              PageRouteBuilder(
                  pageBuilder: (_, __, ___) => const SingleKitchenOrderScreen(),
                  transitionDuration: const Duration(milliseconds: 500),
                  transitionsBuilder: (_, a, __, c) => FadeTransition(
                        opacity: a,
                        child: c,
                      )),
              (route) => false);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 2,
            ),
            Center(
              child: Text(
                tableNumber,
                style: GoogleFonts.dosis(
                    fontWeight: FontWeight.bold, fontSize: 35),
              ),
            ),
            StatusButtonWidget(
                onTap: () => showDialog<Dialog>(
                    context: context,
                    builder: (BuildContext context) =>
                        const MyKitchenStatusDialog()),
                statusColor: statusColor,
                statusString: statusString)
          ],
        ),
      ),
    );
  }
}
