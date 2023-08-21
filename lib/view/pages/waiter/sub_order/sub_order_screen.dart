import 'package:coffeeproject/controller/provider/products_state.dart';
import 'package:coffeeproject/model/db/box/boxes.dart';
import 'package:coffeeproject/model/db/columns/category_entity.dart';
import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/components/forms/my_divider.dart';
import 'package:coffeeproject/view/components/forms/my_searchbar.dart';
import 'package:coffeeproject/view/components/my_drawer.dart';
import 'package:coffeeproject/view/components/posts/categorypost.dart';
import 'package:coffeeproject/view/pages/waiter/components/product.dart';
import 'package:coffeeproject/view/pages/waiter/tables/tablesscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

class SubOrderScreen extends StatefulWidget {
  const SubOrderScreen({super.key});

  @override
  State<SubOrderScreen> createState() => _SubOrderScreenState();
}

class _SubOrderScreenState extends State<SubOrderScreen> {
  @override
  void initState() {
    super.initState();
    getCategories();
  }

  List<CategoryEntity> categories = [];
  getCategories() async {
    Boxes.categoryBox = await Hive.openBox("categoryBox");
    categories = Boxes.categoryBox.values.toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const MyDrawer(),
        backgroundColor: secondaryColor,
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.arrowLeft,
              size: 20,
            ),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  PageRouteBuilder(
                      pageBuilder: (_, __, ___) => const TablesScreen(),
                      transitionDuration: const Duration(milliseconds: 500),
                      transitionsBuilder: (_, a, __, c) => FadeTransition(
                            opacity: a,
                            child: c,
                          )),
                  (route) => false);
            },
          ),
          shape: LinearBorder.bottom(
              side: BorderSide(color: blackColor, width: 2)),
          iconTheme: IconThemeData(color: blackColor),
          centerTitle: true,
          title: Text(
            'Marzocco',
            style: GoogleFonts.dosis(
                color: blackColor, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          backgroundColor: primaryColor,
        ),
        bottomSheet: Container(
          height: 50,
          decoration: BoxDecoration(
              color: primaryColor,
              border: Border(top: BorderSide(width: 2, color: blackColor))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      PageRouteBuilder(
                          pageBuilder: (_, __, ___) => const TablesScreen(),
                          transitionDuration: const Duration(milliseconds: 500),
                          transitionsBuilder: (_, a, __, c) => FadeTransition(
                                opacity: a,
                                child: c,
                              )),
                      (route) => false);
                },
                child: Container(
                  width: 120,
                  height: 33,
                  decoration: BoxDecoration(
                      border: Border.all(color: blackColor, width: 2),
                      borderRadius: BorderRadius.circular(5),
                      color: secondaryColor),
                  child: Center(
                    child: Text(
                      'SUBMIT',
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
                const MySearchBar(),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 140,
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(5),
                          child: SizedBox(
                            width: 100,
                            child: MyCategoryPost(
                              categoryIcon: FontAwesomeIcons.mugHot,
                              engName: categories[index].name,
                              onTap: () {
                                context
                                    .read<ProductsState>()
                                    .changeChoosedCtg(categories[index]);
                                context
                                    .read<ProductsState>()
                                    .changeProductsByChangedCategory();
                              },
                            ),
                          ),
                        );
                      },
                      itemCount: categories.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
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
                Consumer<ProductsState>(
                  builder: (context, value, child) {
                    return Directionality(
                      textDirection: TextDirection.rtl,
                      child: SizedBox(
                        width: 300,
                        height: MediaQuery.of(context).size.height,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: ProductsState.products.length,
                          itemBuilder: (BuildContext context, int index) =>
                              Padding(
                            padding: const EdgeInsets.symmetric(vertical: 7),
                            child: WaiterProductComponents(
                              product: ProductsState.products[index],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
