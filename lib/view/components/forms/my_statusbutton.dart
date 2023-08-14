import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusButtonWidget extends StatelessWidget {
  const StatusButtonWidget({
    super.key,
    required this.statusColor,
    required this.statusString,
    this.onTap,
  });

  final Color statusColor;
  final String statusString;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          borderRadius: const BorderRadiusDirectional.only(
              bottomEnd: Radius.circular(10), bottomStart: Radius.circular(10)),
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
    );
  }
}
