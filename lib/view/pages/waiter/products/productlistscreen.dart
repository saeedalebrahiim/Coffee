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

class ProducstScreen extends StatefulWidget {
  ProducstScreen({super.key});

  @override
  State<ProducstScreen> createState() => _ProducstScreenState();
}

class _ProducstScreenState extends State<ProducstScreen> {
  final List defaultList = [];
  late List coldDrinksList = [
    MyProductPost(
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
    MyProductPost(
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
    MyProductPost(
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
    MyProductPost(
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
  late List categoryList = [
    MyCategoryPost(
      categoryIcon: FontAwesomeIcons.mugHot,
      engName: 'hot drinks',
      perName: 'نوشیدنی گرم',
      onTap: () {},
    ),
    MyCategoryPost(
      categoryIcon: FontAwesomeIcons.martiniGlassCitrus,
      engName: 'cold drinks',
      perName: 'نوشیدنی سرد',
    ),
    MyCategoryPost(
      categoryIcon: FontAwesomeIcons.pizzaSlice,
      engName: 'pizza',
      perName: 'پیتزا',
    ),
    MyCategoryPost(
      categoryIcon: FontAwesomeIcons.iceCream,
      perName: 'بستنی',
      engName: 'ice cream',
    ),
    MyCategoryPost(
      categoryIcon: FontAwesomeIcons.burger,
      perName: 'برگر',
      engName: 'burger',
    )
  ];

  getData() {
    coldDrinksList = [];

    categoryList = [];
  }

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
                lableColor: Color.fromARGB(255, 34, 34, 34),
                borderRadius: BorderRadius.circular(5),
                height: 26,
                borderColor: Color.fromARGB(255, 34, 34, 34),
                borderWidth: 0.5,
                fontSize: 12),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 34, 34, 34),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: FaIcon(
              FontAwesomeIcons.arrowLeftLong,
              color: Color.fromARGB(255, 182, 167, 139),
              size: 20,
            )),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: FaIcon(
                FontAwesomeIcons.mugHot,
                color: Color.fromARGB(255, 182, 167, 139),
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
                    color: Color.fromARGB(255, 182, 167, 139)),
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 34, 34, 34),
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
            MyListview(
                posts: categoryList,
                postHeight: 0,
                listHeight: 130,
                listviewCount: categoryList.length,
                listwidth: double.infinity,
                postWidth: 90,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10)),
            SizedBox(
              height: 4,
            ),
            MyCategoryDivider(),
            for (var element in coldDrinksList)
              Padding(
                padding: const EdgeInsets.all(10),
                child: element,
              ),
          ],
        ),
      ),
    );
  }
}
