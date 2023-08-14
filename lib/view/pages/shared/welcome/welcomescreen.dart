import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/pages/client/products/productlistscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

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
    await Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushAndRemoveUntil(
          PageRouteBuilder(
              pageBuilder: (_, __, ___) => const ProducstScreen(),
              transitionDuration: const Duration(milliseconds: 500),
              transitionsBuilder: (_, a, __, c) => FadeTransition(
                    opacity: a,
                    child: c,
                  )),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      // secondaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 104),
                  child: Lottie.asset('lib/assets/images/animation.json',
                      height: 42, width: 80, fit: BoxFit.fitWidth),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Marzocco',
                  style: GoogleFonts.dosis(
                      color: blackColor,
                      // primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                ),

                // const Padding(
                //   padding: EdgeInsets.only(bottom: 5),
                //   child: Image(
                //     image: AssetImage('lib/assets/images/logo.png'),
                //     width: 40,
                //     height: 40,
                //   ),
                // )
              ],
            ),
            const SizedBox(
              height: 200,
            ),
            // Center(
            //   child: LoadingAnimationWidget.staggeredDotsWave(
            //     color: primaryColor,
            //     size: 40,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
