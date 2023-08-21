import 'package:coffeeproject/controller/provider/table_state.dart';
import 'package:coffeeproject/model/db/columns/table_entity.dart';
import 'package:coffeeproject/model/enums/order_status.dart';
import 'package:coffeeproject/model/enums/table_status.dart';
import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/pages/cachier/payment/subpay_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

//Use this for call dialog on pressed
//()=> showDialog<Dialog>(context:context,builder:(BuildContext context) => MyDialog())

class MyStatusDialog extends StatefulWidget {
  const MyStatusDialog({Key? key}) : super(key: key);

  @override
  State<MyStatusDialog> createState() => _MyStatusDialogState();
}

class _MyStatusDialogState extends State<MyStatusDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: 300,
        height: MediaQuery.of(context).size.height - 300,
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.1)),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 130,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: blackColor),
                    borderRadius: BorderRadius.circular(5),
                    color: reserveTabaleColor),
                child: Center(
                  child: Text(
                    'RESERVE',
                    style: GoogleFonts.dosis(
                        color: blackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const SubPayScreen(),
                        transitionDuration: const Duration(milliseconds: 500),
                        transitionsBuilder: (_, a, __, c) => FadeTransition(
                              opacity: a,
                              child: c,
                            )),
                    (route) => false);
              },
              child: Container(
                width: 180,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: blackColor),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.amber),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'PAY',
                      style: GoogleFonts.dosis(
                          color: blackColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 17),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 4.5),
                      child: FaIcon(
                        FontAwesomeIcons.sackDollar,
                        size: 18,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 130,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: blackColor),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    'Back',
                    style: GoogleFonts.dosis(
                        color: blackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
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

class MyWaiterStatusDialog extends StatefulWidget {
  const MyWaiterStatusDialog({Key? key, required this.table}) : super(key: key);
  final TableEntity table;

  @override
  State<MyWaiterStatusDialog> createState() => _MyWaiterStatusDialogState();
}

class _MyWaiterStatusDialogState extends State<MyWaiterStatusDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: 300,
        height: MediaQuery.of(context).size.height - 300,
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.1)),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                context.read<TableState>().changeStatus(
                      tableId: widget.table.id,
                      newOrderStatus: widget.table.orderStatus,
                      newtableStatus: TableStatus.reserve.name,
                    );
                context.read<TableState>().getTables();
              },
              child: Container(
                width: 130,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: blackColor),
                    borderRadius: BorderRadius.circular(5),
                    color: reserveTabaleColor),
                child: Center(
                  child: Text(
                    'RESERVE',
                    style: GoogleFonts.dosis(
                        color: blackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 130,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: blackColor),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey),
                child: Center(
                  child: Text(
                    'EMPTY',
                    style: GoogleFonts.dosis(
                        color: blackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 130,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: blackColor),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    'Back',
                    style: GoogleFonts.dosis(
                        color: blackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
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

class MyKitchenStatusDialog extends StatefulWidget {
  const MyKitchenStatusDialog({Key? key}) : super(key: key);

  @override
  State<MyKitchenStatusDialog> createState() => _MyKitchenStatusDialogState();
}

class _MyKitchenStatusDialogState extends State<MyKitchenStatusDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: 300,
        height: MediaQuery.of(context).size.height - 300,
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.1)),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 130,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: blackColor),
                    borderRadius: BorderRadius.circular(5),
                    color: readyOrderStatusColor),
                child: Center(
                  child: Text(
                    'READY',
                    style: GoogleFonts.dosis(
                        color: blackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 130,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: blackColor),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    'Back',
                    style: GoogleFonts.dosis(
                        color: blackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
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
