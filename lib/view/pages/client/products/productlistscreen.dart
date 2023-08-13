import 'package:coffeeproject/controller/provider/products_state.dart';
import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/model/models/product_model.dart';
import 'package:coffeeproject/model/models/productcategory_model.dart';
import 'package:coffeeproject/view/components/forms/my_searchbar.dart';
import 'package:coffeeproject/view/components/my_categorydivider.dart';
import 'package:coffeeproject/view/components/my_drawer.dart';
import 'package:coffeeproject/view/components/posts/categorypost.dart';
import 'package:coffeeproject/view/components/posts/productpost.dart';
import 'package:coffeeproject/view/pages/client/shopcards/shopcard_screen.dart';
import 'package:coffeeproject/view/pages/client/smart_suggestion/smartsuggestion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProducstScreen extends StatefulWidget {
  const ProducstScreen({super.key});

  @override
  State<ProducstScreen> createState() => _ProducstScreenState();
}

class _ProducstScreenState extends State<ProducstScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ProductsState>().handleProducts(hotDrinksList);
    context.read<ProductsState>().enFa("نوشیدنی گرم", "hot drinks");
  }

  late List<ProductModel> hotDrinksList = [
    ProductModel(
      mainTitle: 'Espresso',
      imageWidth: 100,
      imageHeight: 100,
      borderWidth: 0,
      titleSize: 16,
      stringSize: 14,
      imagePath: 'lib/assets/images/22.png',
      stringOne: '40/000',
      postColor: const Color.fromARGB(255, 221, 217, 210),
      postBorderColor: const Color.fromARGB(255, 221, 217, 210),
      borderRadius: BorderRadius.circular(10),
      tags: '#tags #tags #tags',
      perTitle: 'اسپرسو',
    ),
    ProductModel(
      imageWidth: 100,
      imageHeight: 100,
      borderWidth: 0,
      titleSize: 16,
      stringSize: 14,
      imagePath: 'lib/assets/images/11.png',
      mainTitle: 'Latte',
      stringOne: '70/000',
      postColor: const Color.fromARGB(255, 221, 217, 210),
      postBorderColor: const Color.fromARGB(255, 221, 217, 210),
      borderRadius: BorderRadius.circular(10),
      tags: '#tags #tags #tags',
      perTitle: 'لـته',
    ),
    ProductModel(
      imageWidth: 100,
      imageHeight: 100,
      borderWidth: 0,
      titleSize: 16,
      stringSize: 14,
      imagePath: 'lib/assets/images/11.png',
      mainTitle: 'Latte',
      stringOne: '70/000',
      postColor: const Color.fromARGB(255, 221, 217, 210),
      postBorderColor: const Color.fromARGB(255, 221, 217, 210),
      borderRadius: BorderRadius.circular(10),
      tags: '#tags #tags #tags',
      perTitle: 'لـته',
    ),
    ProductModel(
      imageWidth: 100,
      imageHeight: 100,
      borderWidth: 0,
      titleSize: 16,
      stringSize: 14,
      imagePath: 'lib/assets/images/33.png',
      mainTitle: 'Tea ',
      stringOne: '20/000',
      postColor: const Color.fromARGB(255, 221, 217, 210),
      postBorderColor: const Color.fromARGB(255, 221, 217, 210),
      borderRadius: BorderRadius.circular(10),
      tags: '#tags #tags #tags',
      perTitle: 'چـایی',
    ),
  ];
  late List<ProductModel> coldDrinks = [
    ProductModel(
      imageWidth: 100,
      imageHeight: 100,
      borderWidth: 0,
      titleSize: 16,
      stringSize: 14,
      imagePath: 'lib/assets/images/11.png',
      mainTitle: 'Latte',
      stringOne: '70/000',
      postColor: const Color.fromARGB(255, 221, 217, 210),
      postBorderColor: const Color.fromARGB(255, 221, 217, 210),
      borderRadius: BorderRadius.circular(10),
      tags: '#tags #tags #tags',
      perTitle: 'لـته',
    ),
    ProductModel(
      mainTitle: 'Espresso',
      imageWidth: 100,
      imageHeight: 100,
      borderWidth: 0,
      titleSize: 16,
      stringSize: 14,
      imagePath: 'lib/assets/images/22.png',
      stringOne: '40/000',
      postColor: const Color.fromARGB(255, 221, 217, 210),
      postBorderColor: const Color.fromARGB(255, 221, 217, 210),
      borderRadius: BorderRadius.circular(10),
      tags: '#tags #tags #tags',
      perTitle: 'اسپرسو',
    ),
    ProductModel(
      imageWidth: 100,
      imageHeight: 100,
      borderWidth: 0,
      titleSize: 16,
      stringSize: 14,
      imagePath: 'lib/assets/images/11.png',
      mainTitle: 'Latte',
      stringOne: '70/000',
      postColor: const Color.fromARGB(255, 221, 217, 210),
      postBorderColor: const Color.fromARGB(255, 221, 217, 210),
      borderRadius: BorderRadius.circular(10),
      tags: '#tags #tags #tags',
      perTitle: 'لـته',
    ),
    ProductModel(
      imageWidth: 100,
      imageHeight: 100,
      borderWidth: 0,
      titleSize: 16,
      stringSize: 14,
      imagePath: 'lib/assets/images/33.png',
      mainTitle: 'Tea ',
      stringOne: '20/000',
      postColor: const Color.fromARGB(255, 221, 217, 210),
      postBorderColor: const Color.fromARGB(255, 221, 217, 210),
      borderRadius: BorderRadius.circular(10),
      tags: '#tags #tags #tags',
      perTitle: 'چـایی',
    ),
  ];
  late List<ProductCategoryModel> categoryList = [
    ProductCategoryModel(
      categoryIcon: FontAwesomeIcons.mugHot,
      engName: 'hot drinks',
      perName: 'نوشیدنی گرم',
      onTap: () {
        context.read<ProductsState>().handleProducts(hotDrinksList);
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
        context.read<ProductsState>().handleProducts(coldDrinks);
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
        floatingActionButton: RawMaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
                PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const SmartSuggestionScreen(),
                    transitionDuration: const Duration(milliseconds: 500),
                    transitionsBuilder: (_, a, __, c) => FadeTransition(
                          opacity: a,
                          child: c,
                        )),
                (route) => false);
          },
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: backgroundColor,
                border: Border.all(width: 1, color: secondaryColor)),
            width: 77,
            height: 77,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.keyboard_command_key,
                  size: 28,
                  color: secondaryColor,
                ),
                Text(
                  'Smart',
                  style: GoogleFonts.dosis(
                    fontSize: 12,
                    color: secondaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Suggest',
                  style: GoogleFonts.dosis(
                      fontSize: 12,
                      color: secondaryColor,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
        ),
        endDrawer: const MyDrawer(),
        backgroundColor: backgroundColor,
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const ShopCardScreen(),
                        transitionDuration: const Duration(milliseconds: 500),
                        transitionsBuilder: (_, a, __, c) => FadeTransition(
                              opacity: a,
                              child: c,
                            )),
                    (route) => false);
              },
              icon: FaIcon(
                FontAwesomeIcons.cartShopping,
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
                const SizedBox(
                  height: 10,
                ),
                Consumer<ProductsState>(
                  builder: (context, value, child) => MyCategoryDivider(
                    engName: ProductsState.ctgNameEn,
                    faName: ProductsState.ctgNameFa,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Consumer<ProductsState>(
                  builder: (context, value, child) => SizedBox(
                    width: 500,
                    height: MediaQuery.of(context).size.height - 150,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: GridView.builder(
                        itemCount: ProductsState.products.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 0.7, crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return MyProductPost(
                            imageWidth:
                                ProductsState.products[index].imageWidth,
                            imageHeight:
                                ProductsState.products[index].imageHeight,
                            borderWidth:
                                ProductsState.products[index].borderWidth,
                            titleSize: ProductsState.products[index].titleSize,
                            stringSize:
                                ProductsState.products[index].stringSize,
                            imagePath: ProductsState.products[index].imagePath,
                            mainTitle: ProductsState.products[index].mainTitle,
                            stringOne: ProductsState.products[index].stringOne,
                            postColor:
                                ProductsState.products[index].postBorderColor,
                            postBorderColor:
                                ProductsState.products[index].postBorderColor,
                            borderRadius:
                                ProductsState.products[index].borderRadius,
                            tags: ProductsState.products[index].tags,
                            perTitle: ProductsState.products[index].perTitle,
                          );
                        },
                      ),
                    ),
                  ),
                )
                // for (var element in hotDrinksList)
                //   Padding(
                //     padding: const EdgeInsets.all(5),
                //     child: element,
                //   ),
                // Consumer<ProductsState>(
                //   builder: (context, gg, child) => Column(
                //     children: [
                //       for (var element in ProductsState.products)
                //         Padding(
                //           padding: const EdgeInsets.all(10),
                //           child: MyProductPost(
                //             imageWidth: element.imageWidth,
                //             imageHeight: element.imageHeight,
                //             borderWidth: element.borderWidth,
                //             titleSize: element.borderWidth,
                //             stringSize: element.borderWidth,
                //             imagePath: element.imagePath,
                //             mainTitle: element.mainTitle,
                //             stringOne: element.stringOne,
                //             postColor: element.postColor,
                //             postBorderColor: element.postBorderColor,
                //             borderRadius: element.borderRadius,
                //           ),
                //         ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ));
  }
}
