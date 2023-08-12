import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/components/forms/my_addtocard.dart';
import 'package:coffeeproject/view/components/forms/my_divider.dart';
import 'package:coffeeproject/view/components/my_drawer.dart';
import 'package:coffeeproject/view/pages/client/products/productlistscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopCardScreen extends StatefulWidget {
  const ShopCardScreen({super.key});

  @override
  State<ShopCardScreen> createState() => _ShopCardScreenState();
}

class _ShopCardScreenState extends State<ShopCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const MyDrawer(),
        backgroundColor: backgroundColor,
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const ProducstScreen(),
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
          title: Text(
            'Marzocco',
            style: GoogleFonts.dosis(
                color: secondaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          backgroundColor: backgroundColor,
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
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: secondaryColor)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: ListView.builder(
                              itemCount: 10,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) => Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      textDirection: TextDirection.ltr,
                                      children: [
                                        Text(
                                          'Espresso',
                                          style: GoogleFonts.dosis(
                                              color: secondaryColor,
                                              fontSize: 18),
                                        ),
                                        MyDivider(
                                            thickness: 0.3,
                                            horizontalPadding: 5,
                                            dividerColor: secondaryColor),
                                        MyShopCardAddToCard(),
                                        MyDivider(
                                            thickness: 0.3,
                                            horizontalPadding: 5,
                                            dividerColor: secondaryColor),
                                        Text(
                                          '140/000',
                                          style: GoogleFonts.dosis(
                                              color: secondaryColor,
                                              fontSize: 17),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
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
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 350,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: secondaryColor)),
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
                                        color: secondaryColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    '340/000',
                                    style: GoogleFonts.dosis(
                                        color: secondaryColor, fontSize: 17),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 120,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: secondaryColor),
                                  child: Center(
                                    child: Text(
                                      'ORDER',
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
