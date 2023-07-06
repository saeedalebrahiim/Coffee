import 'package:coffeeproject/model/models/singleorder_model.dart';
import 'package:coffeeproject/view/components/posts/singleorderpost.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleOrderScreen extends StatelessWidget {
  SingleOrderScreen({super.key});
  final List<SingleOrderModel> orders = [
    SingleOrderModel(
      imageWidth: 120,
      imageHeight: 120,
      borderWidth: 0,
      titleSize: 14,
      stringSize: 12,
      imagePath: 'lib/assets/images/testimage.avif',
      mainTitle: 'Coffee',
      stringOne: '40/000',
      postColor: Color.fromARGB(255, 221, 217, 210),
      postBorderColor: Color.fromARGB(255, 221, 217, 210),
      borderRadius: BorderRadius.circular(10),
      count: '4',
      orderStatusColor: Colors.green,
    ),
    SingleOrderModel(
      imageWidth: 120,
      imageHeight: 120,
      borderWidth: 0,
      titleSize: 14,
      stringSize: 12,
      imagePath: 'lib/assets/images/testimage.avif',
      mainTitle: 'Coffee',
      stringOne: '40/000',
      postColor: Color.fromARGB(255, 221, 217, 210),
      postBorderColor: Color.fromARGB(255, 221, 217, 210),
      borderRadius: BorderRadius.circular(10),
      count: '4',
      orderStatusColor: Colors.green,
    ),
    SingleOrderModel(
      imageWidth: 120,
      imageHeight: 120,
      borderWidth: 0,
      titleSize: 14,
      stringSize: 12,
      imagePath: 'lib/assets/images/testimage.avif',
      mainTitle: 'Coffee',
      stringOne: '40/000',
      postColor: Color.fromARGB(255, 221, 217, 210),
      postBorderColor: Color.fromARGB(255, 221, 217, 210),
      borderRadius: BorderRadius.circular(10),
      count: '4',
      orderStatusColor: Colors.green,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 34, 34),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: FaIcon(
              FontAwesomeIcons.arrowLeftLong,
              color: Color.fromARGB(255, 182, 167, 139),
              size: 20,
            )),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: FaIcon(
                FontAwesomeIcons.mugHot,
                color: Color.fromARGB(255, 182, 167, 139),
                size: 12,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text(
                'Terrace',
                style: GoogleFonts.dosis(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 182, 167, 139)),
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 34, 34, 34),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var element in orders)
              Padding(
                padding: const EdgeInsets.all(10),
                child: MySingleOrderPost(
                    imageWidth: element.imageWidth,
                    imageHeight: element.imageHeight,
                    borderWidth: element.imageHeight,
                    titleSize: element.imageHeight,
                    stringSize: element.imageHeight,
                    imagePath: element.imagePath,
                    mainTitle: element.mainTitle,
                    stringOne: element.stringOne,
                    postColor: element.postColor,
                    postBorderColor: element.postBorderColor,
                    borderRadius: element.borderRadius,
                    count: element.count,
                    orderStatusColor: element.orderStatusColor),
              ),
          ],
        ),
      ),
    );
  }
}
