import 'package:coffeeproject/view/pages/auth/loginscreen.dart';
import 'package:coffeeproject/view/pages/smart_suggestion/smartsuggestion.dart';
import 'package:coffeeproject/view/pages/waiter/products/productlistscreen.dart';
import 'package:flutter/material.dart';

const String login = "login";
const String productScreen = "productScreen";
const String smartSuggestion = "smartSuggestion";

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  "login": (context) => LoginScreen(),
  "productScreen": (context) => ProducstScreen(),
  "smartSuggestion": (context) => SmartSuggestionScreen(),
};
