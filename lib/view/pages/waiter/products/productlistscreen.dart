import 'package:coffeeproject/controller/provider/products_state.dart';
import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/model/models/product_model.dart';
import 'package:coffeeproject/model/models/productcategory_model.dart';
import 'package:coffeeproject/view/components/forms/my_button.dart';
import 'package:coffeeproject/view/components/forms/my_dialog.dart';
import 'package:coffeeproject/view/components/forms/my_searchbar.dart';
import 'package:coffeeproject/view/components/my_categorydivider.dart';
import 'package:coffeeproject/view/components/my_drawer.dart';
import 'package:coffeeproject/view/components/posts/categorypost.dart';
import 'package:coffeeproject/view/components/posts/productpost.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProducstScreen extends StatefulWidget {
  ProducstScreen({super.key});

  @override
  State<ProducstScreen> createState() => _ProducstScreenState();
}

class _ProducstScreenState extends State<ProducstScreen> {
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
      postColor: Color.fromARGB(255, 221, 217, 210),
      postBorderColor: Color.fromARGB(255, 221, 217, 210),
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
      postColor: Color.fromARGB(255, 221, 217, 210),
      postBorderColor: Color.fromARGB(255, 221, 217, 210),
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
      postColor: Color.fromARGB(255, 221, 217, 210),
      postBorderColor: Color.fromARGB(255, 221, 217, 210),
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
      postColor: Color.fromARGB(255, 221, 217, 210),
      postBorderColor: Color.fromARGB(255, 221, 217, 210),
      borderRadius: BorderRadius.circular(10),
      tags: '#tags #tags #tags',
      perTitle: 'چـایی',
    ),
  ];

  // late List<ProductModel> coldDrinksList = [
  //   ProductModel(
  //       imageWidth: 120,
  //       imageHeight: 120,
  //       borderWidth: 0,
  //       titleSize: 14,
  //       stringSize: 12,
  //       imagePath: 'lib/assets/images/testimage.avif',
  //       mainTitle: 'Coffee',
  //       stringOne: '40/000',
  //       postColor: Color.fromARGB(255, 221, 217, 210),
  //       postBorderColor: Color.fromARGB(255, 221, 217, 210),
  //       borderRadius: BorderRadius.circular(10)),
  //   ProductModel(
  //       imageWidth: 120,
  //       imageHeight: 120,
  //       borderWidth: 0,
  //       titleSize: 14,
  //       stringSize: 12,
  //       imagePath: 'lib/assets/images/testimage.avif',
  //       mainTitle: 'Coffee',
  //       stringOne: '40/000',
  //       postColor: Color.fromARGB(255, 221, 217, 210),
  //       postBorderColor: Color.fromARGB(255, 221, 217, 210),
  //       borderRadius: BorderRadius.circular(10)),
  //   ProductModel(
  //       imageWidth: 120,
  //       imageHeight: 120,
  //       borderWidth: 0,
  //       titleSize: 14,
  //       stringSize: 12,
  //       imagePath: 'lib/assets/images/testimage.avif',
  //       mainTitle: 'Coffee',
  //       stringOne: '40/000',
  //       postColor: Color.fromARGB(255, 221, 217, 210),
  //       postBorderColor: Color.fromARGB(255, 221, 217, 210),
  //       borderRadius: BorderRadius.circular(10)),
  //   ProductModel(
  //       imageWidth: 120,
  //       imageHeight: 120,
  //       borderWidth: 0,
  //       titleSize: 14,
  //       stringSize: 12,
  //       imagePath: 'lib/assets/images/testimage.avif',
  //       mainTitle: 'Coffee',
  //       stringOne: '40/000',
  //       postColor: Color.fromARGB(255, 221, 217, 210),
  //       postBorderColor: Color.fromARGB(255, 221, 217, 210),
  //       borderRadius: BorderRadius.circular(10)),
  // ];
  late List<ProductCategoryModel> categoryList = [
    ProductCategoryModel(
      categoryIcon: FontAwesomeIcons.mugHot,
      engName: 'hot drinks',
      perName: 'نوشیدنی گرم',
      onTap: () {
        // context.read<ProductsState>().handleProducts(hotDrinksList);
      },
    ),
    ProductCategoryModel(
      categoryIcon: FontAwesomeIcons.martiniGlassCitrus,
      engName: 'cold drinks',
      perName: 'نوشیدنی سرد',
      onTap: () {
        // context.read<ProductsState>().handleProducts(coldDrinksList);
      },
    ),
    ProductCategoryModel(
      categoryIcon: FontAwesomeIcons.pizzaSlice,
      engName: 'pizza',
      perName: 'پیتزا',
    ),
    ProductCategoryModel(
      categoryIcon: FontAwesomeIcons.iceCream,
      perName: 'بستنی',
      engName: 'ice cream',
    ),
    ProductCategoryModel(
      categoryIcon: FontAwesomeIcons.burger,
      perName: 'برگر',
      engName: 'burger',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      bottomSheet: Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: Color.fromARGB(255, 221, 217, 210), width: 0.1),
            color: Color.fromARGB(255, 34, 34, 34)),
        width: double.infinity,
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("smartSuggestion");
              },
              child: Container(
                width: 150,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: secondaryColor),
                child: Center(
                  child: Text(
                    'Smart Suggestion',
                    style: GoogleFonts.dosis(
                        color: primaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.cartShopping,
              color: secondaryColor,
              size: 20,
            )),
        title: Text(
          'Marzocco',
          style: GoogleFonts.dosis(
              color: secondaryColor, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            MySearchBar(),
            SizedBox(
              height: 10,
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
            SizedBox(
              height: 4,
            ),
            MyCategoryDivider(
              engName: 'hot drinks',
              faName: 'نوشیدنی گرم',
            ),
            SizedBox(
              width: 500,
              height: MediaQuery.of(context).size.height - 150,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  itemCount: hotDrinksList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.7, crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return MyProductPost(
                      imageWidth: hotDrinksList[index].imageWidth,
                      imageHeight: hotDrinksList[index].imageHeight,
                      borderWidth: hotDrinksList[index].borderWidth,
                      titleSize: hotDrinksList[index].titleSize,
                      stringSize: hotDrinksList[index].stringSize,
                      imagePath: hotDrinksList[index].imagePath,
                      mainTitle: hotDrinksList[index].mainTitle,
                      stringOne: hotDrinksList[index].stringOne,
                      postColor: hotDrinksList[index].postBorderColor,
                      postBorderColor: hotDrinksList[index].postBorderColor,
                      borderRadius: hotDrinksList[index].borderRadius,
                      tags: hotDrinksList[index].tags,
                      perTitle: hotDrinksList[index].perTitle,
                    );
                  },
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
    );
  }
}
