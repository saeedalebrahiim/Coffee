import 'package:coffeeproject/view/components/dialogs/status_dialog.dart';
import 'package:coffeeproject/view/pages/waiter/sub_order/sub_order_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTablePost extends StatelessWidget {
  final String tableNumber;
  final String statusString;
  final Color statusColor;
  const MyTablePost(
      {super.key,
      required this.tableNumber,
      required this.statusString,
      required this.statusColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 221, 217, 210),
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushAndRemoveUntil(
              PageRouteBuilder(
                  pageBuilder: (_, __, ___) => const SubOrderScreen(),
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
            const Padding(
              padding: EdgeInsets.all(5.0),
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
                        style: GoogleFonts.dosis(
                            fontSize: 35, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Divider(thickness: 0.5, color: Colors.grey[500])),
                ],
              ),
            ),
            InkWell(
              onTap: () => showDialog<Dialog>(
                  context: context,
                  builder: (BuildContext context) => const MyWaiterStatusDialog()),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadiusDirectional.only(
                      bottomEnd: Radius.circular(10),
                      bottomStart: Radius.circular(10)),
                  color: statusColor,
                ),
                child: Center(
                  child: Text(
                    statusString,
                    style: GoogleFonts.dosis(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 34, 34, 34)),
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
