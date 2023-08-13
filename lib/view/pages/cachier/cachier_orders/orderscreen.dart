import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/model/models/orderstatus_model.dart';
import 'package:coffeeproject/view/components/forms/my_divider.dart';
import 'package:coffeeproject/view/components/my_drawer.dart';
import 'package:coffeeproject/view/components/posts/statusordertablepost.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersScreen extends StatelessWidget {
  OrdersScreen({super.key});
  final List<OrderStatusModel> tableList = [
    OrderStatusModel(
      tableNumber: '1',
      statusColor: reserveTableColor,
      statusString: 'LODING ...',
    ),
    OrderStatusModel(
      tableNumber: '2',
      statusColor: readyOrderStatusColor,
      statusString: 'READY',
    ),
    OrderStatusModel(
      tableNumber: '3',
      statusColor: reserveTableColor,
      statusString: 'LODING ...',
    ),
    OrderStatusModel(
      tableNumber: '4',
      statusColor: emptyTableColor,
      statusString: '...',
    ),
    OrderStatusModel(
      tableNumber: '5',
      statusColor: reserveTableColor,
      statusString: 'LODING ...',
    ),
    OrderStatusModel(
      tableNumber: '6',
      statusColor: reserveTableColor,
      statusString: 'LODING ...',
    ),
    OrderStatusModel(
      tableNumber: '7',
      statusColor: reserveTableColor,
      statusString: 'LODING ...',
    ),
    OrderStatusModel(
      tableNumber: '8',
      statusColor: emptyTableColor,
      statusString: '...',
    ),
    OrderStatusModel(
      tableNumber: '9',
      statusColor: reserveTableColor,
      statusString: ' ...',
    ),
    OrderStatusModel(
      tableNumber: '10',
      statusColor: emptyTableColor,
      statusString: ' ...',
    ),
    OrderStatusModel(
      tableNumber: '11',
      statusColor: emptyTableColor,
      statusString: ' ...',
    ),
    OrderStatusModel(
      tableNumber: '12',
      statusColor: emptyTableColor,
      statusString: ' ...',
    ),
  ];

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
      backgroundColor: const Color.fromARGB(255, 34, 34, 34),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const MyDivider(
                    thickness: 0.5,
                    horizontalPadding: 12,
                    dividerColor: Color.fromARGB(255, 221, 217, 210)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    'Orders',
                    style: GoogleFonts.dosis(
                        color: const Color.fromARGB(255, 221, 217, 210),
                        fontSize: 18),
                  ),
                ),
                const MyDivider(
                    thickness: 0.5,
                    horizontalPadding: 12,
                    dividerColor: Color.fromARGB(255, 221, 217, 210))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: MyGridView(
            //       posts: tableList,
            //       gridCount: tableList.length,
            //       gridCrossCount: 3,
            //       gridViewHeight: 500,
            //       gridViewWidth: 500,
            //       padding: EdgeInsets.all(7),
            //       scrollDirection: Axis.vertical),
            // ),
            SizedBox(
              width: 800,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  height: MediaQuery.of(context).size.height - 50,
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: tableList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(7),
                        child: MyStatusTablePost(
                          tableNumber: tableList[index].tableNumber,
                          statusColor: tableList[index].statusColor,
                          statusString: tableList[index].statusString,
                        ),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
