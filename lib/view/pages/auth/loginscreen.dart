import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/components/forms/my_button.dart';
import 'package:coffeeproject/view/components/forms/my_textfield.dart';
import 'package:coffeeproject/view/pages/waiter/home/homescreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 16,
              ),
              Icon(
                Icons.lock,
                size: 90,
                color: primaryColor,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Wellcome back you\'ve been missed !',
                style: TextStyle(color: secondaryColor, fontSize: 16),
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
                fillColor: secondaryColor,
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
                fillColor: secondaryColor,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      'Forget password ?',
                      style: TextStyle(color: secondaryColor),
                    ),
                  ),
                  const SizedBox(
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                },
                borderColor: primaryColor,
                borderRadius: BorderRadius.circular(10),
                borderWidth: 0.5,
                buttomColor: primaryColor,
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
                    Expanded(
                        child: Divider(thickness: 0.5, color: secondaryColor)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: secondaryColor),
                      ),
                    ),
                    Expanded(
                        child: Divider(thickness: 0.5, color: secondaryColor)),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member ?',
                    style: TextStyle(color: secondaryColor),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const Text(
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
