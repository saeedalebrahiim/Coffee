import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/model/models/productcategory_model.dart';
import 'package:coffeeproject/view/components/forms/my_addtocard.dart';
import 'package:coffeeproject/view/components/forms/my_divider.dart';
import 'package:coffeeproject/view/components/my_drawer.dart';
import 'package:coffeeproject/view/components/posts/categorypost.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BunkerScreen extends StatefulWidget {
  const BunkerScreen({super.key});

  @override
  State<BunkerScreen> createState() => _BunkerScreenState();
}

class _BunkerScreenState extends State<BunkerScreen> {
  late List<ProductCategoryModel> categoryList = [
    ProductCategoryModel(
      categoryIcon: FontAwesomeIcons.seedling,
      engName: 'Vegetables',
      onTap: () {},
    ),
    ProductCategoryModel(
      categoryIcon: FontAwesomeIcons.wineBottle,
      engName: 'Drinks',
      onTap: () {},
    ),
    ProductCategoryModel(
      onTap: () {},
      categoryIcon: FontAwesomeIcons.cow,
      engName: 'Dairy',
    ),
    ProductCategoryModel(
      onTap: () {},
      categoryIcon: FontAwesomeIcons.appleWhole,
      engName: 'Fruits',
    ),
    ProductCategoryModel(
      onTap: () {},
      categoryIcon: FontAwesomeIcons.bottleDroplet,
      engName: 'Syrups',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const MyDrawer(),
        backgroundColor: const Color.fromARGB(255, 243, 234, 226),
        appBar: AppBar(
            shape: LinearBorder.bottom(
                side: BorderSide(color: blackColor, width: 2)),
            iconTheme: IconThemeData(
              color: blackColor,
            ),
            elevation: 0,
            centerTitle: true,
            title: Text(
              'Marzocco',
              style: GoogleFonts.dosis(
                  color: const Color.fromARGB(255, 37, 36, 34),
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            backgroundColor: const Color.fromARGB(255, 198, 172, 143)),
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
                SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 35),
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(5),
                          child: SizedBox(
                            width: 100,
                            height: 140,
                            child: MyCategoryPost(
                              categoryIcon: categoryList[index].categoryIcon,
                              engName: categoryList[index].engName,
                              onTap: categoryList[index].onTap,
                            ),
                          ),
                        );
                      },
                      itemCount: categoryList.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                Row(
                  children: [
                    MyDivider(
                        thickness: 0.5,
                        horizontalPadding: 20,
                        dividerColor: blackColor),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Available',
                        style: GoogleFonts.dosis(
                            fontWeight: FontWeight.w500,
                            fontSize: 19,
                            color: blackColor),
                      ),
                    ),
                    MyDivider(
                        thickness: 0.5,
                        horizontalPadding: 20,
                        dividerColor: blackColor),
                  ],
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
                              'Milk',
                              style: GoogleFonts.dosis(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            tileColor: whiteColor,
                            title: Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Text(
                                '140/000',
                                style: GoogleFonts.dosis(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                            ),
                            trailing: const MyWaiterAddToCard()),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    MyDivider(
                        thickness: 0.5,
                        horizontalPadding: 20,
                        dividerColor: blackColor),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Unavailable',
                        style: GoogleFonts.dosis(
                            fontWeight: FontWeight.w500,
                            fontSize: 19,
                            color: blackColor),
                      ),
                    ),
                    MyDivider(
                        thickness: 0.5,
                        horizontalPadding: 20,
                        dividerColor: blackColor),
                  ],
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
                              'Milk',
                              style: GoogleFonts.dosis(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            tileColor: whiteColor,
                            title: Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Text(
                                '140/000',
                                style: GoogleFonts.dosis(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                            ),
                            trailing: const MyWaiterAddToCard()),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
