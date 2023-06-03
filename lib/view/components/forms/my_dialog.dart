import 'package:coffeeproject/view/components/forms/my_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Use this for call dialog on pressed
//()=> showDialog<Dialog>(context:context,builder:(BuildContext context) => MyDialog())

class MyDialog extends StatelessWidget {
  const MyDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.4,
        height: MediaQuery.of(context).size.height / 4,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.1)),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: FaIcon(
                FontAwesomeIcons.mugHot,
                color: Color.fromARGB(255, 34, 34, 34),
                size: 45,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: const Text("Your order is Done",
                  style: TextStyle(
                      color: Color.fromARGB(255, 46, 134, 55),
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 16,
            ),
            MyButton(
                onTap: () {
                  Navigator.pop(context);
                },
                lable: 'Done',
                buttomColor: Color.fromARGB(255, 34, 34, 34),
                width: 90,
                fontWeight: FontWeight.bold,
                lableColor: Color.fromARGB(255, 221, 217, 210),
                borderRadius: BorderRadius.circular(10),
                height: 30,
                borderColor: Color.fromARGB(255, 221, 217, 210),
                borderWidth: 0,
                fontSize: 14)
          ],
        ),
      ),
    );
  }
}
