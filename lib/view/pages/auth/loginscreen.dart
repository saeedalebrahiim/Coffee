import 'package:coffeeproject/view/components/forms/my_button.dart';
import 'package:coffeeproject/view/components/forms/my_textfield.dart';
import 'package:coffeeproject/view/pages/home/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 34, 34),
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
                color: Color.fromARGB(255, 171, 154, 122),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Wellcome back you\'ve been missed !',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 253, 241), fontSize: 16),
              ),
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                hintText: 'Username',
                obscureText: false,
                controller: userNameController,
                borderColor: Color.fromARGB(255, 182, 167, 139),
                borderRadius: BorderRadius.circular(10),
                borderSize: 1,
                cursorColor: Color.fromARGB(255, 182, 167, 139),
                fillColor: Color.fromARGB(255, 255, 253, 241),
                focusBorderColor: Color.fromARGB(255, 182, 167, 139),
                fontSize: 14,
                focusBorderSize: 1,
                fontWeight: FontWeight.bold,
                hintColor: Color.fromARGB(255, 255, 251, 219),
                height: 70,
                width: 190,
              ),
              MyTextField(
                hintText: 'Password',
                obscureText: true,
                controller: passwordController,
                borderColor: Color.fromARGB(255, 182, 167, 139),
                borderRadius: BorderRadius.circular(10),
                borderSize: 1,
                cursorColor: Color.fromARGB(255, 182, 167, 139),
                fillColor: Color.fromARGB(255, 255, 253, 241),
                focusBorderColor: Color.fromARGB(255, 182, 167, 139),
                fontSize: 14,
                focusBorderSize: 1,
                fontWeight: FontWeight.bold,
                hintColor: Color.fromARGB(255, 255, 251, 219),
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
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 253, 241)),
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
                borderColor: Color.fromARGB(255, 182, 167, 139),
                borderRadius: BorderRadius.circular(10),
                borderWidth: 0.5,
                buttomColor: Color.fromARGB(255, 171, 154, 122),
                fontSize: 12,
                fontWeight: FontWeight.bold,
                height: 40,
                lableColor: Color.fromARGB(255, 255, 251, 219),
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
                        child:
                            Divider(thickness: 0.5, color: Colors.grey[500])),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 251, 219)),
                      ),
                    ),
                    Expanded(
                        child:
                            Divider(thickness: 0.5, color: Colors.grey[500])),
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
                    style: TextStyle(color: Color.fromARGB(255, 255, 251, 219)),
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
