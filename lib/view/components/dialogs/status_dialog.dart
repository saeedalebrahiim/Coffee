import 'package:coffeeproject/model/globals/globals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            InkWell(
              onTap: () {},
              child: Container(
                width: 130,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: backgroundColor),
                    borderRadius: BorderRadius.circular(5),
                    color: readyOrderStatusColor),
                child: Center(
                  child: Text(
                    'READY',
                    style: GoogleFonts.dosis(
                        color: backgroundColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 130,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: backgroundColor),
                    borderRadius: BorderRadius.circular(5),
                    color: reserveTabaleColor),
                child: Center(
                  child: Text(
                    'RESERVE',
                    style: GoogleFonts.dosis(
                        color: backgroundColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 130,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: backgroundColor),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey),
                child: Center(
                  child: Text(
                    'EMPTY',
                    style: GoogleFonts.dosis(
                        color: backgroundColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
            SizedBox(
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
                    border: Border.all(color: backgroundColor),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    'Back',
                    style: GoogleFonts.dosis(
                        color: backgroundColor,
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
  const MyWaiterStatusDialog({Key? key}) : super(key: key);

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
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 130,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: backgroundColor),
                    borderRadius: BorderRadius.circular(5),
                    color: reserveTabaleColor),
                child: Center(
                  child: Text(
                    'RESERVE',
                    style: GoogleFonts.dosis(
                        color: backgroundColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 130,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: backgroundColor),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey),
                child: Center(
                  child: Text(
                    'EMPTY',
                    style: GoogleFonts.dosis(
                        color: backgroundColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
            SizedBox(
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
                    border: Border.all(color: backgroundColor),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    'Back',
                    style: GoogleFonts.dosis(
                        color: backgroundColor,
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
