import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/model/models/orderstatus_model.dart';
import 'package:coffeeproject/view/components/my_drawer.dart';
import 'package:coffeeproject/view/components/posts/tablepost.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

class TablesScreen extends StatelessWidget {
  TablesScreen({super.key});

  final List<OrderStatusModel> tableList = [
    const OrderStatusModel(
      tableNumber: '1',
      statusString: 'Loding ...',
    ),
    const OrderStatusModel(
      tableNumber: '2',
      statusString: 'Loding ...',
    ),
    const OrderStatusModel(
      tableNumber: '3',
      statusString: 'Loding ...',
    ),
    const OrderStatusModel(
      tableNumber: '4',
      statusString: 'Ready',
    ),
    const OrderStatusModel(
      tableNumber: '5',
      statusString: '...',
    ),
    const OrderStatusModel(
      tableNumber: '6',
      statusString: 'Loding ...',
    ),
    const OrderStatusModel(
      tableNumber: '7',
      statusString: 'Loding ...',
    ),
    const OrderStatusModel(
      tableNumber: '8',
      statusString: '...',
    ),
    const OrderStatusModel(
      tableNumber: '9',
      statusString: '...',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const MyDrawer(),
        appBar: AppBar(
          elevation: 0,
          shape: LinearBorder.bottom(
              side: BorderSide(color: blackColor, width: 2)),
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
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 375),
                childAnimationBuilder: (widget) => SlideAnimation(
                    horizontalOffset: 50,
                    child: FadeInAnimation(
                      child: widget,
                    )),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      height: 600,
                      child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: tableList.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: MyTablePost(
                              statusString: tableList[index].statusString,
                              statusColor:
                                  tableList[index].statusString == "LOADING ..."
                                      ? loadingTableColor
                                      : tableList[index].statusString == "..."
                                          ? emptyTableColor
                                          : readyOrderStatusColor,
                              tableNumber: tableList[index].tableNumber,
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
