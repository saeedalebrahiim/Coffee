import 'package:coffeeproject/view/pages/welcome/welcomescreen.dart';
import 'package:flutter/material.dart';

class initScreen extends StatefulWidget {
  const initScreen({super.key});

  @override
  State<initScreen> createState() => _initScreenState();
}

class _initScreenState extends State<initScreen> {
  @override
  Widget build(BuildContext context) {
    return const WelcomeScreen();
  }
}
