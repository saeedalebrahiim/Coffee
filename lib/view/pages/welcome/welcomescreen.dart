import 'package:coffeeproject/model/globals/globals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  navigate() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushNamed("productScreen");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Marzocco',
                    style: GoogleFonts.dosis(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 45),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Image(
                      image: AssetImage('lib/assets/images/logo.png'),
                      width: 40,
                      height: 40,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: LoadingAnimationWidget.staggeredDotsWave(
                color: primaryColor,
                size: 40,
              ),
            )
          ],
        ),
      ),
    );
  }
}
