import 'package:coffeeproject/view/pages/shared/auth/loginscreen.dart';
import 'package:coffeeproject/view/pages/client/smart_suggestion/smartsuggestion.dart';
import 'package:coffeeproject/view/pages/client/products/productlistscreen.dart';
import 'package:flutter/material.dart';

const String login = "login";
const String productScreen = "productScreen";
const String smartSuggestion = "smartSuggestion";

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  "login": (context) => LoginScreen(),
  "productScreen": (context) => const ProducstScreen(),
  "smartSuggestion": (context) => const SmartSuggestionScreen(),
};
