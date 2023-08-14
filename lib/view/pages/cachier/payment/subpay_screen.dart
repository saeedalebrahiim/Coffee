import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/components/forms/my_divider.dart';
import 'package:coffeeproject/view/components/my_drawer.dart';
import 'package:coffeeproject/view/pages/cachier/cachier_orders/kitchenorder_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SubPayScreen extends StatefulWidget {
  const SubPayScreen({super.key});

  @override
  State<SubPayScreen> createState() => _SubPayScreenState();
}

class _SubPayScreenState extends State<SubPayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const MyDrawer(),
        backgroundColor: secondaryColor,
        appBar: AppBar(
          shape: LinearBorder.bottom(
              side: BorderSide(color: blackColor, width: 2)),
          elevation: 0,
          iconTheme: IconThemeData(color: blackColor),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => OrdersCachierScreen(),
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
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: 350,
                          height: 350,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: blackColor, width: 2)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: ListView.builder(
                              itemCount: 10,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) => Column(
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      textDirection: TextDirection.ltr,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            'Espresso',
                                            style: GoogleFonts.dosis(
                                                fontWeight: FontWeight.w500,
                                                color: blackColor,
                                                fontSize: 18),
                                          ),
                                        ),
                                        MyDivider(
                                            thickness: 0.3,
                                            horizontalPadding: 5,
                                            dividerColor: blackColor),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            '4x',
                                            style: GoogleFonts.dosis(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: blackColor),
                                          ),
                                        ),
                                        MyDivider(
                                            thickness: 0.3,
                                            horizontalPadding: 5,
                                            dividerColor: blackColor),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 3),
                                          child: Text(
                                            '140/000',
                                            style: GoogleFonts.dosis(
                                                color: blackColor,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      MyDivider(
                                          thickness: 0.4,
                                          horizontalPadding: 20,
                                          dividerColor: secondaryColor),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 350,
                          height: 200,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: blackColor, width: 2)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                textDirection: TextDirection.ltr,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Total price : ',
                                    style: GoogleFonts.dosis(
                                        color: blackColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    '340/000',
                                    style: GoogleFonts.dosis(
                                        color: blackColor, fontSize: 17),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 120,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: blackColor, width: 2),
                                      borderRadius: BorderRadius.circular(5),
                                      color: primaryColor),
                                  child: Center(
                                    child: Text(
                                      'PAY',
                                      style: GoogleFonts.dosis(
                                          color: blackColor,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 17),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
