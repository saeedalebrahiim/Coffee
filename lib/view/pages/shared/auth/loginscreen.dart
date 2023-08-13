import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/components/forms/my_button.dart';
import 'package:coffeeproject/view/components/forms/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 16, 25),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 16,
              ),
              const Icon(
                Icons.lock,
                size: 90,
                color: Color.fromARGB(255, 203, 180, 167),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Wellcome back you\'ve been missed !',
                style: TextStyle(
                    color: Color.fromARGB(255, 244, 245, 246), fontSize: 16),
              ),
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                hintText: 'Username',
                obscureText: false,
                controller: userNameController,
                borderColor: primaryColor,
                borderRadius: BorderRadius.circular(10),
                borderSize: 1,
                cursorColor: primaryColor,
                fillColor: const Color.fromARGB(255, 244, 245, 246),
                focusBorderColor: primaryColor,
                fontSize: 14,
                focusBorderSize: 1,
                fontWeight: FontWeight.bold,
                hintColor: secondaryColor,
                height: 70,
                width: 190,
              ),
              MyTextField(
                hintText: 'Password',
                obscureText: true,
                controller: passwordController,
                borderColor: primaryColor,
                borderRadius: BorderRadius.circular(10),
                borderSize: 1,
                cursorColor: primaryColor,
                fillColor: const Color.fromARGB(255, 244, 245, 246),
                focusBorderColor: primaryColor,
                fontSize: 14,
                focusBorderSize: 1,
                fontWeight: FontWeight.bold,
                hintColor: secondaryColor,
                height: 70,
                width: 190,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      'Forget password ?',
                      style: TextStyle(color: Color.fromARGB(255, 2, 16, 25)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              MyButton(
                lable: 'Sign Up',
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => const HomeScreen(),
                  //     ));
                },
                borderColor: primaryColor,
                borderRadius: BorderRadius.circular(10),
                borderWidth: 0.5,
                buttomColor: const Color.fromARGB(255, 122, 143, 172),
                fontSize: 12,
                fontWeight: FontWeight.bold,
                height: 40,
                lableColor: secondaryColor,
                width: 160,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    const Expanded(
                        child: Divider(
                            thickness: 0.5,
                            color: Color.fromARGB(255, 2, 16, 25))),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Insert coffee to begin',
                        style: GoogleFonts.dosis(
                            color: const Color.fromARGB(255, 2, 16, 25),
                            fontSize: 17),
                      ),
                    ),
                    const Expanded(
                        child: Divider(
                            thickness: 0.5,
                            color: Color.fromARGB(255, 2, 16, 25))),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member ?',
                    style: TextStyle(color: Color.fromARGB(255, 2, 16, 25)),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    ' Register now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
