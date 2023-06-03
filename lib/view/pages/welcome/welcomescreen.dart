import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      Navigator.of(context).pushNamed("login");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 34, 34),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: FaIcon(
                    FontAwesomeIcons.mugHot,
                    color: Color.fromARGB(255, 182, 167, 139),
                    size: 22,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Text(
                    'Terrace',
                    style: GoogleFonts.dosis(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 182, 167, 139)),
                  ),
                ),
              ],
            ),
            Center(
              child: LoadingAnimationWidget.prograssiveDots(
                color: Color.fromARGB(255, 182, 167, 139),
                size: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
