import 'package:coffeeproject/model/db/columns/product_entity.dart';
import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/components/forms/my_addtocard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WaiterProductComponents extends StatefulWidget {
  final ProductEntity product;
  const WaiterProductComponents({
    super.key,
    required this.product,
  });

  @override
  State<WaiterProductComponents> createState() =>
      _WaiterProductComponentsState();
}

class _WaiterProductComponentsState extends State<WaiterProductComponents> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(
          widget.product.mainTitle,
          style: GoogleFonts.dosis(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        tileColor: whiteColor,
        title: Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Text(
            widget.product.price,
            style: GoogleFonts.dosis(fontWeight: FontWeight.w500, fontSize: 15),
          ),
        ),
        trailing: const MyWaiterAddToCard());
  }
}
