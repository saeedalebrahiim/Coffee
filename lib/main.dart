import 'package:coffeeproject/controller/provider/navigationbarstate.dart';
import 'package:coffeeproject/initscreen.dart';
import 'package:coffeeproject/routs/routs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => NavigationState())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: initScreen(),
      routes: routes,
    );
  }
}
