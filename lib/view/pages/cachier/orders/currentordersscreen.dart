import 'package:coffeeproject/model/models/orderstatus_model.dart';
import 'package:coffeeproject/view/components/forms/my_divider.dart';
import 'package:coffeeproject/view/components/posts/statusordertablepost.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CachierOrderScreen extends StatelessWidget {
  CachierOrderScreen({super.key});
  final List<OrderStatusModel> tableList = [
    OrderStatusModel(
      tableNumber: '1',
      statusColor: Colors.yellow,
      statusString: 'LODING ...',
    ),
    OrderStatusModel(
      tableNumber: '2',
      statusColor: Colors.green,
      statusString: 'READY',
    ),
    OrderStatusModel(
      tableNumber: '3',
      statusColor: Colors.yellow,
      statusString: 'LODING ...',
    ),
    OrderStatusModel(
      tableNumber: '4',
      statusColor: Colors.grey,
      statusString: '',
    ),
    OrderStatusModel(
      tableNumber: '5',
      statusColor: Colors.yellow,
      statusString: 'LODING ...',
    ),
    OrderStatusModel(
      tableNumber: '6',
      statusColor: Colors.yellow,
      statusString: 'LODING ...',
    ),
    OrderStatusModel(
      tableNumber: '7',
      statusColor: Colors.yellow,
      statusString: 'LODING ...',
    ),
    OrderStatusModel(
      tableNumber: '8',
      statusColor: Colors.grey,
      statusString: '',
    ),
    OrderStatusModel(
      tableNumber: '9',
      statusColor: Colors.yellow,
      statusString: 'LODING ...',
    ),
    OrderStatusModel(
      tableNumber: '10',
      statusColor: Colors.yellow,
      statusString: 'LODING ...',
    ),
    OrderStatusModel(
      tableNumber: '11',
      statusColor: Colors.yellow,
      statusString: 'LODING ...',
    ),
    OrderStatusModel(
      tableNumber: '12',
      statusColor: Colors.yellow,
      statusString: 'LODING ...',
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
              child: SizedBox(
                width: 700,
                height: 600,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: tableList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(7),
                      child: MyStatusTablePost(
                        tableNumber: tableList[index].tableNumber,
                        statusColor: tableList[index].statusColor,
                        statusString: tableList[index].statusString,
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
