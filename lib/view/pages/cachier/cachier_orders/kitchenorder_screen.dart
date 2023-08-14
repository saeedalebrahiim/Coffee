import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/model/models/orderstatus_model.dart';
import 'package:coffeeproject/view/components/forms/my_divider.dart';
import 'package:coffeeproject/view/components/my_drawer.dart';
import 'package:coffeeproject/view/components/posts/statusordertablepost.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersCachierScreen extends StatelessWidget {
  OrdersCachierScreen({super.key});
  final List<OrderStatusModel> tableList = [
    const OrderStatusModel(
      tableNumber: '1',
      statusString: 'LODING ...',
    ),
    const OrderStatusModel(
      tableNumber: '2',
      statusString: 'READY',
    ),
    const OrderStatusModel(
      tableNumber: '3',
      statusString: 'LODING ...',
    ),
    const OrderStatusModel(
      tableNumber: '4',
      statusString: '...',
    ),
    const OrderStatusModel(
      tableNumber: '5',
      statusString: 'LODING ...',
    ),
    const OrderStatusModel(
      tableNumber: '6',
      statusString: 'LODING ...',
    ),
    const OrderStatusModel(
      tableNumber: '7',
      statusString: 'LODING ...',
    ),
    const OrderStatusModel(
      tableNumber: '8',
      statusString: '...',
    ),
    const OrderStatusModel(
      tableNumber: '9',
      statusString: ' ...',
    ),
    const OrderStatusModel(
      tableNumber: '10',
      statusString: ' ...',
    ),
    const OrderStatusModel(
      tableNumber: '11',
      statusString: ' ...',
    ),
    const OrderStatusModel(
      tableNumber: '12',
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
                        child: MyStatusTablePost(
                          statusColor:
                              tableList[index].statusString == "LOADING ..."
                                  ? loadingTableColor
                                  : tableList[index].statusString == "..."
                                      ? emptyTableColor
                                      : readyOrderStatusColor,
                          tableNumber: tableList[index].tableNumber,
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
