import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/components/forms/my_addtocard.dart';
import 'package:coffeeproject/view/components/forms/my_divider.dart';
import 'package:coffeeproject/view/components/my_drawer.dart';
import 'package:coffeeproject/view/pages/cachier/cachier_orders/orderscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleCachierOrderScreen extends StatefulWidget {
  const SingleCachierOrderScreen({super.key});

  @override
  State<SingleCachierOrderScreen> createState() =>
      _SingleCachierOrderScreenState();
}

class _SingleCachierOrderScreenState extends State<SingleCachierOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const MyDrawer(),
        backgroundColor: backgroundColor,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => OrdersScreen(),
                        transitionDuration: const Duration(milliseconds: 500),
                        transitionsBuilder: (_, a, __, c) => FadeTransition(
                              opacity: a,
                              child: c,
                            )),
                    (route) => false);
              },
              icon: FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: secondaryColor,
                size: 20,
              )),
          centerTitle: true,
          title: Text(
            'Marzocco',
            style: GoogleFonts.dosis(
                color: secondaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          backgroundColor: backgroundColor,
        ),
        bottomSheet: Container(
          height: 50,
          decoration: BoxDecoration(color: backgroundColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      PageRouteBuilder(
                          pageBuilder: (_, __, ___) => OrdersScreen(),
                          transitionDuration: const Duration(milliseconds: 500),
                          transitionsBuilder: (_, a, __, c) => FadeTransition(
                                opacity: a,
                                child: c,
                              )),
                      (route) => false);
                },
                child: Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: secondaryColor),
                  child: Center(
                    child: Text(
                      'COMPLETE',
                      style: GoogleFonts.dosis(
                          color: backgroundColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 17),
                    ),
                  ),
                ),
              )
            ],
          ),
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
                      physics: NeverScrollableScrollPhysics(),
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
                            tileColor: secondaryColor,
                            title: Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Text(
                                '140/000',
                                style: GoogleFonts.dosis(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                            ),
                            trailing: MyWaiterAddToCard()),
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
