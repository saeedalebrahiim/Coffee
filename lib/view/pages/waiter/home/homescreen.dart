import 'package:coffeeproject/view/components/my_navigationbar.dart';
import 'package:coffeeproject/view/pages/waiter/orders/orderscreen.dart';
import 'package:coffeeproject/view/pages/waiter/tables/tablesscreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List myBody = [
    TablesScreen(),
    OrdersScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MyNavigationBar(
      myBody: myBody,
    );
  }
}
