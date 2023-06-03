import 'package:coffeeproject/view/components/forms/my_divider.dart';
import 'package:coffeeproject/view/components/posts/currentorderpost.dart';
import 'package:coffeeproject/view/components/posts/orderspost.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersScreen extends StatelessWidget {
  OrdersScreen({super.key});
  final List orderList = [
    MyOrdersPost(
      imageWidth: 120,
      imageHeight: 120,
      borderWidth: 0.5,
      titleSize: 14,
      stringSize: 12,
      imagePath: 'lib/assets/images/testimage.avif',
      mainTitle: 'Coffee',
      stringOne: '45/000',
      postColor: Color.fromARGB(255, 221, 217, 210),
      postBorderColor: Color.fromARGB(255, 34, 34, 34),
      borderRadius: BorderRadius.circular(10),
      count: '4',
    ),
    MyOrdersPost(
      imageWidth: 120,
      imageHeight: 120,
      borderWidth: 0.5,
      titleSize: 14,
      stringSize: 12,
      imagePath: 'lib/assets/images/testimage.avif',
      mainTitle: 'Coffee',
      stringOne: '140/000',
      postColor: Color.fromARGB(255, 221, 217, 210),
      postBorderColor: Color.fromARGB(255, 34, 34, 34),
      borderRadius: BorderRadius.circular(10),
      count: '4',
    ),
    MyOrdersPost(
      imageWidth: 120,
      imageHeight: 120,
      borderWidth: 0.5,
      titleSize: 14,
      stringSize: 12,
      imagePath: 'lib/assets/images/testimage.avif',
      mainTitle: 'Coffee',
      stringOne: '20/000',
      postColor: Color.fromARGB(255, 221, 217, 210),
      postBorderColor: Color.fromARGB(255, 34, 34, 34),
      borderRadius: BorderRadius.circular(10),
      count: '4',
    )
  ];
  final List currentOrders = [
    MyCurrentOrderPost(
      imageWidth: 120,
      imageHeight: 120,
      borderWidth: 0.5,
      titleSize: 14,
      stringSize: 12,
      imagePath: 'lib/assets/images/testimage.avif',
      mainTitle: 'Coffee',
      stringOne: '20/000',
      postColor: Color.fromARGB(255, 221, 217, 210),
      postBorderColor: Color.fromARGB(255, 34, 34, 34),
      borderRadius: BorderRadius.circular(10),
      count: '4',
      orderStatusColor: Color.fromARGB(255, 253, 253, 150),
    ),
    MyCurrentOrderPost(
      imageWidth: 120,
      imageHeight: 120,
      borderWidth: 0.5,
      titleSize: 14,
      stringSize: 12,
      imagePath: 'lib/assets/images/testimage.avif',
      mainTitle: 'Coffee',
      stringOne: '20/000',
      postColor: Color.fromARGB(255, 221, 217, 210),
      postBorderColor: Color.fromARGB(255, 34, 34, 34),
      borderRadius: BorderRadius.circular(10),
      count: '4',
      orderStatusColor: Color.fromARGB(255, 253, 253, 150),
    ),
    MyCurrentOrderPost(
      imageWidth: 120,
      imageHeight: 120,
      borderWidth: 0.5,
      titleSize: 14,
      stringSize: 12,
      imagePath: 'lib/assets/images/testimage.avif',
      mainTitle: 'Coffee',
      stringOne: '20/000',
      postColor: Color.fromARGB(255, 221, 217, 210),
      postBorderColor: Color.fromARGB(255, 34, 34, 34),
      borderRadius: BorderRadius.circular(10),
      count: '4',
      orderStatusColor: Color.fromARGB(255, 38, 127, 38),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 34, 34),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                MyDivider(
                    thickness: 0.5,
                    horizontalPadding: 12,
                    dividerColor: Color.fromARGB(255, 221, 217, 210)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    'Orders',
                    style: GoogleFonts.dosis(
                        color: Color.fromARGB(255, 221, 217, 210),
                        fontSize: 18),
                  ),
                ),
                MyDivider(
                    thickness: 0.5,
                    horizontalPadding: 12,
                    dividerColor: Color.fromARGB(255, 221, 217, 210))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            for (var element in currentOrders)
              Padding(
                padding: const EdgeInsets.all(10),
                child: element,
              ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                MyDivider(
                    thickness: 0.5,
                    horizontalPadding: 12,
                    dividerColor: Color.fromARGB(255, 221, 217, 210)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    'All Orders',
                    style: GoogleFonts.dosis(
                        color: Color.fromARGB(255, 221, 217, 210),
                        fontSize: 18),
                  ),
                ),
                MyDivider(
                    thickness: 0.5,
                    horizontalPadding: 12,
                    dividerColor: Color.fromARGB(255, 221, 217, 210))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            for (var element in orderList)
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
