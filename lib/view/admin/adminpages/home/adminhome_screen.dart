import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/admin/adminpages/products/adminproducts_screen.dart';
import 'package:coffeeproject/view/components/forms/my_divider.dart';
import 'package:coffeeproject/view/components/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        backgroundColor: backgroundColor,
      ),
      backgroundColor: backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Wrap(
                spacing: 100,
                runSpacing: 50,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AdminProductsScreen(),
                          ));
                    },
                    child: Container(
                      width: 200,
                      height: 240,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 0.1,
                              blurRadius: 0.1)
                        ],
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                            colors: [
                              secondaryColor,
                              primaryColor,
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Image(
                            image: AssetImage('lib/assets/images/coffee.png'),
                            width: 100,
                            height: 100,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'محـصولات',
                            style: GoogleFonts.notoNaskhArabic(
                                fontWeight: FontWeight.w600, fontSize: 22),
                          ),
                          Text(
                            'Products',
                            style: GoogleFonts.dosis(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 200,
                      height: 240,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 0.1,
                              blurRadius: 0.1)
                        ],
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                            colors: [
                              secondaryColor,
                              primaryColor,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Image(
                            image: AssetImage('lib/assets/images/cup.png'),
                            width: 83,
                            height: 83,
                          ),
                          const SizedBox(
                            height: 29,
                          ),
                          Text(
                            'سـفارشات',
                            style: GoogleFonts.notoNaskhArabic(
                                fontWeight: FontWeight.w600, fontSize: 22),
                          ),
                          Text(
                            'Orders',
                            style: GoogleFonts.dosis(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
                        'ACCESSIBILITY',
                        style: GoogleFonts.dosis(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
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
              Wrap(
                spacing: 100,
                runSpacing: 50,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 200,
                      height: 240,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 0.1,
                              blurRadius: 0.1)
                        ],
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                            colors: [
                              secondaryColor,
                              primaryColor,
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Image(
                            image: AssetImage('lib/assets/images/bar.png'),
                            width: 90,
                            height: 90,
                          ),
                          const SizedBox(
                            height: 27,
                          ),
                          Text(
                            'کـاربران',
                            style: GoogleFonts.notoNaskhArabic(
                                fontWeight: FontWeight.w600, fontSize: 22),
                          ),
                          Text(
                            'Users',
                            style: GoogleFonts.dosis(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 200,
                      height: 240,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 0.1,
                              blurRadius: 0.1)
                        ],
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                            colors: [
                              secondaryColor,
                              primaryColor,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Image(
                            image: AssetImage('lib/assets/images/money.png'),
                            width: 95,
                            height: 95,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            'گـزارشات مالی',
                            style: GoogleFonts.notoNaskhArabic(
                                fontWeight: FontWeight.w600, fontSize: 22),
                          ),
                          Text(
                            'Financial Statistics',
                            style: GoogleFonts.dosis(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
