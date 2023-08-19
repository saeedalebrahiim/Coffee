import 'package:coffeeproject/model/db/box/shopcardbox.dart';
import 'package:coffeeproject/model/db/columns/shopcard_entity.dart';
import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/components/my_drawer.dart';
import 'package:coffeeproject/view/components/posts/productpost.dart';
import 'package:coffeeproject/view/pages/client/products/productlistscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_listener/hive_listener.dart';

class ShopCardScreen extends StatefulWidget {
  const ShopCardScreen({super.key});

  @override
  State<ShopCardScreen> createState() => _ShopCardScreenState();
}

class _ShopCardScreenState extends State<ShopCardScreen> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  List<ShopCardEntity> shopCardItems = [];

  getData() async {
    MyShopCardBox.shopCardBox = await Hive.openBox("shopCardBox");
    shopCardItems = MyShopCardBox.shopCardBox.values.toList();
    setState(() {});
  }

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
                        HiveListener<dynamic>(
                          box: MyShopCardBox.shopCardBox,
                          builder: (box) => Container(
                            width: 350,
                            height: 350,
                            decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: blackColor, width: 2)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: ListView.builder(
                                  itemCount:
                                      MyShopCardBox.shopCardBox.values.length,
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (context, index) {
                                    return MyProductPost(
                                      imagePath:
                                          box.values.toList()[index].imagePath,
                                      mainTitle:
                                          box.values.toList()[index].mainTitle,
                                      stringOne:
                                          box.values.toList()[index].stringOne,
                                      tags: box.values.toList()[index].tags,
                                      product:
                                          box.values.toList()[index].product,
                                      productId:
                                          box.values.toList()[index].productId,
                                    );
                                  }),
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
                                      'ORDER',
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
