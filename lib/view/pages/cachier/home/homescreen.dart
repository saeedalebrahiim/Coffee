import 'package:coffeeproject/view/components/my_navigationbar.dart';
import 'package:coffeeproject/view/pages/cachier/orders/allordersscreen.dart';
import 'package:coffeeproject/view/pages/cachier/orders/currentordersscreen.dart';
import 'package:flutter/material.dart';

class CachierHomeScreen extends StatefulWidget {
  const CachierHomeScreen({super.key});

  @override
  State<CachierHomeScreen> createState() => _CachierHomeScreenState();
}

class _CachierHomeScreenState extends State<CachierHomeScreen> {
  List myBody = [
    CachierOrderScreen(),
    AllOrdersScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MyNavigationBar(
      myBody: myBody,
    );
  }
}
