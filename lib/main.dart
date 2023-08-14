import 'package:coffeeproject/initscreen.dart';
import 'package:coffeeproject/model/db/product_entity.dart';
import 'package:coffeeproject/routs/routs.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  await Hive.initFlutter("KatteDb");
  Hive.registerAdapter(ProductEntityAdapter());
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const InitScreen(),
      routes: routes,
    );
  }
}
