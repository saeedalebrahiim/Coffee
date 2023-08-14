import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/components/forms/my_divider.dart';
import 'package:coffeeproject/view/components/my_drawer.dart';
import 'package:coffeeproject/view/pages/kitchen/kitchenorder_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleKitchenOrderScreen extends StatefulWidget {
  const SingleKitchenOrderScreen({super.key});

  @override
  State<SingleKitchenOrderScreen> createState() =>
      _SingleKitchenOrderScreenState();
}

class _SingleKitchenOrderScreenState extends State<SingleKitchenOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const MyDrawer(),
        backgroundColor: secondaryColor,
        appBar: AppBar(
          shape: LinearBorder.bottom(
              side: BorderSide(color: blackColor, width: 2)),
          iconTheme: IconThemeData(color: blackColor),
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => OrdersKitchenScreen(),
                        transitionDuration: const Duration(milliseconds: 500),
                        transitionsBuilder: (_, a, __, c) => FadeTransition(
                              opacity: a,
                              child: c,
                            )),
                    (route) => false);
              },
              icon: FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: blackColor,
                size: 20,
              )),
          centerTitle: true,
          title: Text(
            'Marzocco',
            style: GoogleFonts.dosis(
                color: blackColor, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          backgroundColor: primaryColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(milliseconds: 375),
              childAnimationBuilder: (widget) => SlideAnimation(
                  horizontalOffset: 50,
                  child: FadeInAnimation(
                    child: widget,
                  )),
              children: [
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    MyDivider(
                        thickness: 0.5,
                        horizontalPadding: 20,
                        dividerColor: secondaryColor)
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: SizedBox(
                    width: 300,
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        child: ListTile(
                          leading: Text(
                            'Latte',
                            style: GoogleFonts.dosis(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          tileColor: whiteColor,
                          trailing: Text(
                            '4x',
                            style: GoogleFonts.dosis(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: blackColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
