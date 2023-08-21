import 'package:coffeeproject/controller/provider/products_state.dart';
import 'package:coffeeproject/controller/provider/table_state.dart';
import 'package:coffeeproject/initializer.dart';
import 'package:coffeeproject/initscreen.dart';
import 'package:coffeeproject/model/db/columns/category_entity.dart';
import 'package:coffeeproject/model/db/columns/product_entity.dart';
import 'package:coffeeproject/model/db/columns/table_entity.dart';
import 'package:coffeeproject/routs/routs.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await Hive.initFlutter("CafeDb");
  Hive.registerAdapter(TableEntityAdapter());
  Hive.registerAdapter(ProductEntityAdapter());
  Hive.registerAdapter(CategoryEntityAdapter());
  await initializer();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => ProductsState()),
      ChangeNotifierProvider(create: (_) => TableState()),
    ], child: const MyApp()),
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
