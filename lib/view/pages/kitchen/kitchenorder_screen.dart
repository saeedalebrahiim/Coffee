import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/model/models/orderstatus_model.dart';
import 'package:coffeeproject/view/components/forms/my_divider.dart';
import 'package:coffeeproject/view/components/my_drawer.dart';
import 'package:coffeeproject/view/components/posts/statuskitchen_post.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersKitchenScreen extends StatelessWidget {
  OrdersKitchenScreen({super.key});
  final List<OrderStatusModel> tableList = [
    OrderStatusModel(
      tableNumber: '1',
      statusColor: loadingTableColor,
      statusString: 'LODING ...',
    ),
    OrderStatusModel(
      tableNumber: '2',
      statusColor: readyOrderStatusColor,
      statusString: 'READY',
    ),
    OrderStatusModel(
      tableNumber: '3',
      statusColor: loadingTableColor,
      statusString: 'LODING ...',
    ),
    OrderStatusModel(
      tableNumber: '4',
      statusColor: emptyTableColor,
      statusString: '...',
    ),
    OrderStatusModel(
      tableNumber: '5',
      statusColor: loadingTableColor,
      statusString: 'LODING ...',
    ),
    OrderStatusModel(
      tableNumber: '6',
      statusColor: loadingTableColor,
      statusString: 'LODING ...',
    ),
    OrderStatusModel(
      tableNumber: '7',
      statusColor: loadingTableColor,
      statusString: 'LODING ...',
    ),
    OrderStatusModel(
      tableNumber: '8',
      statusColor: emptyTableColor,
      statusString: '...',
    ),
    OrderStatusModel(
      tableNumber: '9',
      statusColor: emptyTableColor,
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
        shape:
            LinearBorder.bottom(side: BorderSide(color: blackColor, width: 2)),
        elevation: 0,
        iconTheme: IconThemeData(color: blackColor),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Marzocco',
          style: GoogleFonts.dosis(
              color: blackColor, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: primaryColor,
      ),
      backgroundColor: secondaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                MyDivider(
                    thickness: 0.5,
                    horizontalPadding: 12,
                    dividerColor: blackColor),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Orders',
                    style: GoogleFonts.dosis(
                        color: blackColor,
                        fontSize: 19,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                MyDivider(
                    thickness: 0.5,
                    horizontalPadding: 12,
                    dividerColor: blackColor)
              ],
            ),
            const SizedBox(
              height: 10,
            ),
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
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(7),
                        child: MyStatusKitchenTablePost(
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
