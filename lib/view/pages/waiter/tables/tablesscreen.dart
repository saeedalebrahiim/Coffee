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
      tableStatusColor: fullTabaleColor,
    ),
    TableModel(
      tableNumber: '2',
      tableStatusColor: reserveTableColor,
    ),
    TableModel(
      tableNumber: '3',
      tableStatusColor: emptyTableColor,
    ),
    TableModel(
      tableNumber: '4',
      tableStatusColor: emptyTableColor,
    ),
    TableModel(
      tableNumber: '5',
      tableStatusColor: emptyTableColor,
    ),
    TableModel(
      tableNumber: '6',
      tableStatusColor: emptyTableColor,
    ),
    TableModel(
      tableNumber: '7',
      tableStatusColor: emptyTableColor,
    ),
    TableModel(
      tableNumber: '8',
      tableStatusColor: emptyTableColor,
    ),
    TableModel(
      tableNumber: '9',
      tableStatusColor: emptyTableColor,
    ),
    TableModel(
      tableNumber: '10',
      tableStatusColor: emptyTableColor,
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
                              tableNumber: tableList[index].tableNumber,
                              tableStatusColor:
                                  tableList[index].tableStatusColor,
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
