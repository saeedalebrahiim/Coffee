import 'package:coffeeproject/controller/provider/products_state.dart';
import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/model/models/product_model.dart';
import 'package:coffeeproject/model/models/productcategory_model.dart';
import 'package:coffeeproject/view/components/forms/my_button.dart';
import 'package:coffeeproject/view/components/forms/my_dialog.dart';
import 'package:coffeeproject/view/components/forms/my_searchbar.dart';
import 'package:coffeeproject/view/components/my_categorydivider.dart';
import 'package:coffeeproject/view/components/my_listview.dart';
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
  final List<ProductModel> hotDrinksList = [
    ProductModel(
        imageWidth: 120,
        imageHeight: 120,
        borderWidth: 0,
        titleSize: 14,
        stringSize: 12,
        imagePath: 'lib/assets/images/testimage.avif',
        mainTitle: 'Coffee',
        stringOne: '40/000',
        postColor: Color.fromARGB(255, 221, 217, 210),
        postBorderColor: Color.fromARGB(255, 221, 217, 210),
        borderRadius: BorderRadius.circular(10)),
  ];
  late List<ProductModel> coldDrinksList = [
    ProductModel(
        imageWidth: 120,
        imageHeight: 120,
        borderWidth: 0,
        titleSize: 14,
        stringSize: 12,
        imagePath: 'lib/assets/images/testimage.avif',
        mainTitle: 'Coffee',
        stringOne: '40/000',
        postColor: Color.fromARGB(255, 221, 217, 210),
        postBorderColor: Color.fromARGB(255, 221, 217, 210),
        borderRadius: BorderRadius.circular(10)),
    ProductModel(
        imageWidth: 120,
        imageHeight: 120,
        borderWidth: 0,
        titleSize: 14,
        stringSize: 12,
        imagePath: 'lib/assets/images/testimage.avif',
        mainTitle: 'Coffee',
        stringOne: '40/000',
        postColor: Color.fromARGB(255, 221, 217, 210),
        postBorderColor: Color.fromARGB(255, 221, 217, 210),
        borderRadius: BorderRadius.circular(10)),
    ProductModel(
        imageWidth: 120,
        imageHeight: 120,
        borderWidth: 0,
        titleSize: 14,
        stringSize: 12,
        imagePath: 'lib/assets/images/testimage.avif',
        mainTitle: 'Coffee',
        stringOne: '40/000',
        postColor: Color.fromARGB(255, 221, 217, 210),
        postBorderColor: Color.fromARGB(255, 221, 217, 210),
        borderRadius: BorderRadius.circular(10)),
    ProductModel(
        imageWidth: 120,
        imageHeight: 120,
        borderWidth: 0,
        titleSize: 14,
        stringSize: 12,
        imagePath: 'lib/assets/images/testimage.avif',
        mainTitle: 'Coffee',
        stringOne: '40/000',
        postColor: Color.fromARGB(255, 221, 217, 210),
        postBorderColor: Color.fromARGB(255, 221, 217, 210),
        borderRadius: BorderRadius.circular(10)),
  ];
  late List<ProductCategoryModel> categoryList = [
    ProductCategoryModel(
      categoryIcon: FontAwesomeIcons.mugHot,
      engName: 'hot drinks',
      perName: 'نوشیدنی گرم',
      onTap: () {
        context.read<ProductsState>().handleProducts(hotDrinksList);
      },
    ),
    ProductCategoryModel(
      categoryIcon: FontAwesomeIcons.martiniGlassCitrus,
      engName: 'cold drinks',
      perName: 'نوشیدنی سرد',
      onTap: () {
        context.read<ProductsState>().handleProducts(coldDrinksList);
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
      bottomSheet: Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: Color.fromARGB(255, 221, 217, 210), width: 0.1),
            color: Color.fromARGB(255, 34, 34, 34)),
        width: double.infinity,
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyListview(
                posts: [Text('ddd'), Text('ddd')],
                postHeight: 0,
                listHeight: 30,
                listviewCount: 0,
                listwidth: 50,
                postWidth: 2,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(0)),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.5),
              child: Text(
                '|',
                style: TextStyle(color: Colors.grey[600], fontSize: 20),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            MyButton(
                onTap: () {
                  showDialog<Dialog>(
                      context: context,
                      builder: (BuildContext context) => MyDialog());
                },
                lable: 'Submit',
                buttomColor: Color.fromARGB(255, 221, 217, 210),
                width: 80,
                fontWeight: FontWeight.bold,
                lableColor: backgroundColor,
                borderRadius: BorderRadius.circular(5),
                height: 26,
                borderColor: backgroundColor,
                borderWidth: 0.5,
                fontSize: 12),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: FaIcon(
              FontAwesomeIcons.arrowLeftLong,
              color: primaryColor,
              size: 20,
            )),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: FaIcon(
                FontAwesomeIcons.mugHot,
                color: primaryColor,
                size: 12,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text(
                'Terrace',
                style: GoogleFonts.dosis(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
            ),
          ],
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
            // MyListview(
            //     posts: categoryList,
            //     postHeight: 0,
            //     listHeight: 130,
            //     listviewCount: categoryList.length,
            //     listwidth: double.infinity,
            //     postWidth: 90,
            //     scrollDirection: Axis.horizontal,
            //     padding: EdgeInsets.all(10)),
            SizedBox(
              width: double.infinity,
              height: 130,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: 90,
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
            SizedBox(
              height: 4,
            ),
            MyCategoryDivider(
              engName: 'hot drinks',
              faName: 'نوشیدنی گرم',
            ),
            Consumer<ProductsState>(
              builder: (context, gg, child) => Column(
                children: [
                  for (var element in ProductsState.products)
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: MyProductPost(
                        imageWidth: element.imageWidth,
                        imageHeight: element.imageHeight,
                        borderWidth: element.borderWidth,
                        titleSize: element.borderWidth,
                        stringSize: element.borderWidth,
                        imagePath: element.imagePath,
                        mainTitle: element.mainTitle,
                        stringOne: element.stringOne,
                        postColor: element.postColor,
                        postBorderColor: element.postBorderColor,
                        borderRadius: element.borderRadius,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
