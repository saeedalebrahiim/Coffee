import 'package:coffeeproject/view/components/my_gridview.dart';
import 'package:coffeeproject/view/components/posts/tablepost.dart';
import 'package:flutter/material.dart';

class TablesScreen extends StatelessWidget {
  TablesScreen({super.key});

  final List tableList = [
    MyTablePost(
      tableNumber: '1',
      tableStatusColor: Color.fromARGB(255, 223, 77, 73),
    ),
    MyTablePost(
      tableNumber: '2',
      tableStatusColor: Color.fromARGB(255, 253, 253, 150),
    ),
    MyTablePost(
      tableNumber: '3',
      tableStatusColor: Colors.grey,
    ),
    MyTablePost(
      tableNumber: '4',
      tableStatusColor: Colors.grey,
    ),
    MyTablePost(
      tableNumber: '5',
      tableStatusColor: Colors.grey,
    ),
    MyTablePost(
      tableNumber: '6',
      tableStatusColor: Colors.grey,
    ),
    MyTablePost(
      tableNumber: '7',
      tableStatusColor: Colors.grey,
    ),
    MyTablePost(
      tableNumber: '8',
      tableStatusColor: Colors.grey,
    ),
    MyTablePost(
      tableNumber: '9',
      tableStatusColor: Colors.grey,
    ),
    MyTablePost(
      tableNumber: '10',
      tableStatusColor: Colors.grey,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 34, 34),
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
