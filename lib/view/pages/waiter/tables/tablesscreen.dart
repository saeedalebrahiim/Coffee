import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/model/models/table_model.dart';
import 'package:coffeeproject/view/components/my_drawer.dart';
import 'package:coffeeproject/view/components/posts/tablepost.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

class TablesScreen extends StatelessWidget {
  TablesScreen({super.key});

  final List<TableModel> tableList = [
    TableModel(
        tableNumber: '1',
        statusString: 'Loding ...',
        statusColor: loadingTableColor),
    TableModel(
        tableNumber: '2',
        statusString: 'Loding ...',
        statusColor: loadingTableColor),
    TableModel(
        tableNumber: '3',
        statusString: 'Loding ...',
        statusColor: loadingTableColor),
    TableModel(
        tableNumber: '4',
        statusString: 'Ready',
        statusColor: readyOrderStatusColor),
    TableModel(tableNumber: '5', statusString: '...', statusColor: Colors.grey),
    TableModel(
        tableNumber: '6',
        statusString: 'Loding ...',
        statusColor: loadingTableColor),
    TableModel(
        tableNumber: '7',
        statusString: 'Loding ...',
        statusColor: loadingTableColor),
    TableModel(tableNumber: '8', statusString: '...', statusColor: Colors.grey),
    TableModel(tableNumber: '9', statusString: '...', statusColor: Colors.grey)
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
                color: secondaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          backgroundColor: backgroundColor,
        ),
        backgroundColor: backgroundColor,
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
                              statusColor: tableList[index].statusColor,
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
