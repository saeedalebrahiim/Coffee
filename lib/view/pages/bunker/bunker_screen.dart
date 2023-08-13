import 'package:coffeeproject/controller/provider/products_state.dart';
import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/model/models/productcategory_model.dart';
import 'package:coffeeproject/view/components/my_drawer.dart';
import 'package:coffeeproject/view/components/posts/categorypost.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BunkerScreen extends StatefulWidget {
  const BunkerScreen({super.key});

  @override
  State<BunkerScreen> createState() => _BunkerScreenState();
}

class _BunkerScreenState extends State<BunkerScreen> {
  late List<ProductCategoryModel> categoryList = [
    ProductCategoryModel(
      categoryIcon: FontAwesomeIcons.mugHot,
      engName: 'hot drinks',
      perName: 'نوشیدنی گرم',
      onTap: () {
        // context.read<ProductsState>().handleProducts(hotDrinksList);
        context.read<ProductsState>().enFa("نوشیدنی گرم", "hot drinks");
      },
    ),
    ProductCategoryModel(
      categoryIcon: FontAwesomeIcons.martiniGlassCitrus,
      engName: 'cold drinks',
      perName: 'نوشیدنی سرد',
      onTap: () {
        // setState(() {
        //   hotDrinksList = coldDrinks;
        // });
        // context.read<ProductsState>().handleProducts(coldDrinks);
        context.read<ProductsState>().enFa('نوشیدنی سرد', "cold drinks");
      },
    ),
    ProductCategoryModel(
      onTap: () {
        context.read<ProductsState>().enFa('پیتزا', "pizza");
      },
      categoryIcon: FontAwesomeIcons.pizzaSlice,
      engName: 'pizza',
      perName: 'پیتزا',
    ),
    ProductCategoryModel(
      onTap: () {
        context.read<ProductsState>().enFa('بستنی', "ice cream");
      },
      categoryIcon: FontAwesomeIcons.iceCream,
      perName: 'بستنی',
      engName: 'ice cream',
    ),
    ProductCategoryModel(
      onTap: () {
        context.read<ProductsState>().enFa('برگر', "burger");
      },
      categoryIcon: FontAwesomeIcons.burger,
      perName: 'برگر',
      engName: 'burger',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const MyDrawer(),
        backgroundColor: Color.fromARGB(255, 243, 234, 226),
        appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text(
              'Marzocco',
              style: GoogleFonts.dosis(
                  color: Color.fromARGB(255, 37, 36, 34),
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            backgroundColor: Color.fromARGB(255, 198, 172, 143)),
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
                Container(
                  color: Color.fromARGB(255, 198, 172, 143),
                  width: double.infinity,
                  height: 240,
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
                              perName: categoryList[index].perName,
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
              ],
            ),
          ),
        ));
  }
}
