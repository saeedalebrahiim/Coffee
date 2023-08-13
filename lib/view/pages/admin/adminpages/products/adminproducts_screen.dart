import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/components/forms/my_divider.dart';
import 'package:coffeeproject/view/components/my_drawer.dart';
import 'package:coffeeproject/view/components/posts/categorypost.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminProductsScreen extends StatelessWidget {
  const AdminProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late List adminCategoryPost = [
      MyCategoryPostAdmin(
        categoryIcon: FontAwesomeIcons.mugHot,
        engName: 'hot drinks',
        perName: 'نوشیدنی گرم',
        onTap: () {
          // context.read<ProductsState>().handleProducts(hotDrinksList);
        },
      ),
      MyCategoryPostAdmin(
        categoryIcon: FontAwesomeIcons.martiniGlassCitrus,
        engName: 'cold drinks',
        perName: 'نوشیدنی سرد',
        onTap: () {
          // context.read<ProductsState>().handleProducts(coldDrinksList);
        },
      ),
      const MyCategoryPostAdmin(
        categoryIcon: FontAwesomeIcons.pizzaSlice,
        engName: 'pizza',
        perName: 'پیتزا',
      ),
      const MyCategoryPostAdmin(
        categoryIcon: FontAwesomeIcons.iceCream,
        perName: 'بستنی',
        engName: 'ice cream',
      ),
      const MyCategoryPostAdmin(
        categoryIcon: FontAwesomeIcons.burger,
        perName: 'برگر',
        engName: 'burger',
      )
    ];

    return Scaffold(
      endDrawer: const MyDrawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Marzocco',
          style: GoogleFonts.dosis(
              color: secondaryColor, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: primaryColor,
      ),
      backgroundColor: secondaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 1000,
                height: 100,
                child: Row(
                  children: [
                    MyDivider(
                        thickness: 0.2,
                        horizontalPadding: 20,
                        dividerColor: secondaryColor),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        'CATEGORY',
                        style: GoogleFonts.dosis(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: secondaryColor),
                      ),
                    ),
                    MyDivider(
                        thickness: 0.2,
                        horizontalPadding: 20,
                        dividerColor: secondaryColor),
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: 800,
                height: 500,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.9, crossAxisCount: 5),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: SizedBox(
                        width: 100,
                        child: MyCategoryPost(
                          categoryIcon: adminCategoryPost[index].categoryIcon,
                          engName: adminCategoryPost[index].engName,
                          perName: adminCategoryPost[index].perName,
                          onTap: adminCategoryPost[index].onTap,
                        ),
                      ),
                    );
                  },
                  itemCount: adminCategoryPost.length,
                  scrollDirection: Axis.vertical,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
