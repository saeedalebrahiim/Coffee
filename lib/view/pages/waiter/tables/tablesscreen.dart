import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/components/my_gridview.dart';
import 'package:coffeeproject/view/components/posts/tablepost.dart';
import 'package:flutter/material.dart';

class TablesScreen extends StatelessWidget {
  TablesScreen({super.key});

  final List tableList = [
    MyTablePost(
      tableNumber: '1',
      tableStatusColor: fullTabaleColor,
    ),
    MyTablePost(
      tableNumber: '2',
      tableStatusColor: reserveTableColor,
    ),
    MyTablePost(
      tableNumber: '3',
      tableStatusColor: emptyTableColor,
    ),
    MyTablePost(
      tableNumber: '4',
      tableStatusColor: emptyTableColor,
    ),
    MyTablePost(
      tableNumber: '5',
      tableStatusColor: emptyTableColor,
    ),
    MyTablePost(
      tableNumber: '6',
      tableStatusColor: emptyTableColor,
    ),
    MyTablePost(
      tableNumber: '7',
      tableStatusColor: emptyTableColor,
    ),
    MyTablePost(
      tableNumber: '8',
      tableStatusColor: emptyTableColor,
    ),
    MyTablePost(
      tableNumber: '9',
      tableStatusColor: emptyTableColor,
    ),
    MyTablePost(
      tableNumber: '10',
      tableStatusColor: emptyTableColor,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyGridView(
                    posts: tableList,
                    gridCount: tableList.length,
                    gridCrossCount: 2,
                    gridViewHeight: 600,
                    gridViewWidth: 300,
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.vertical),
              )
            ],
          ),
        ),
      ),
    );
  }
}
