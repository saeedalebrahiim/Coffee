import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/components/forms/my_divider.dart';
import 'package:coffeeproject/view/components/my_gridview.dart';
import 'package:coffeeproject/view/components/posts/statusordertablepost.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersScreen extends StatelessWidget {
  OrdersScreen({super.key});
  final List tableList = [
    MyStatusTablePost(
      tableNumber: '1',
      statusColor: reserveTableColor,
      statusString: 'LODING ...',
    ),
    MyStatusTablePost(
      tableNumber: '2',
      statusColor: readyOrderStatusColor,
      statusString: 'READY',
    ),
    MyStatusTablePost(
      tableNumber: '3',
      statusColor: reserveTableColor,
      statusString: 'LODING ...',
    ),
    MyStatusTablePost(
      tableNumber: '4',
      statusColor: emptyTableColor,
      statusString: '...',
    ),
    MyStatusTablePost(
      tableNumber: '5',
      statusColor: reserveTableColor,
      statusString: 'LODING ...',
    ),
    MyStatusTablePost(
      tableNumber: '6',
      statusColor: reserveTableColor,
      statusString: 'LODING ...',
    ),
    MyStatusTablePost(
      tableNumber: '7',
      statusColor: reserveTableColor,
      statusString: 'LODING ...',
    ),
    MyStatusTablePost(
      tableNumber: '8',
      statusColor: emptyTableColor,
      statusString: '...',
    ),
    MyStatusTablePost(
      tableNumber: '9',
      statusColor: reserveTableColor,
      statusString: ' ...',
    ),
    MyStatusTablePost(
      tableNumber: '10',
      statusColor: emptyTableColor,
      statusString: ' ...',
    ),
    MyStatusTablePost(
      tableNumber: '11',
      statusColor: emptyTableColor,
      statusString: ' ...',
    ),
    MyStatusTablePost(
      tableNumber: '12',
      statusColor: emptyTableColor,
      statusString: ' ...',
    ),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyGridView(
                  posts: tableList,
                  gridCount: tableList.length,
                  gridCrossCount: 3,
                  gridViewHeight: 500,
                  gridViewWidth: 500,
                  padding: EdgeInsets.all(7),
                  scrollDirection: Axis.vertical),
            ),
          ],
        ),
      ),
    );
  }
}
