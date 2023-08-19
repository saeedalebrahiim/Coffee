import 'package:coffeeproject/controller/provider/db_provider/db_provider.dart';
import 'package:coffeeproject/controller/provider/products_state.dart';
import 'package:coffeeproject/initscreen.dart';
import 'package:coffeeproject/model/db/columns/product_entity.dart';
import 'package:coffeeproject/routs/routs.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await Hive.initFlutter("CafeDb");
  Hive.registerAdapter(ProductEntityAdapter());
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => ProductsState()),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CoffeeShop(),
        builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              home: const InitScreen(),
              routes: routes,
            ));
  }
}
