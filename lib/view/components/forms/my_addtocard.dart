import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/components/forms/my_divider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAddToCard extends StatefulWidget {
  const MyAddToCard({
    super.key,
  });

  @override
  State<MyAddToCard> createState() => _MyAddToCardState();
}

class _MyAddToCardState extends State<MyAddToCard> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 30,
      child: Visibility(
        visible: count > 0,
        replacement: RawMaterialButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              border:
                  Border.all(color: Color.fromARGB(255, 37, 36, 34), width: 2),
              borderRadius: BorderRadius.circular(50),
              color: Color.fromARGB(255, 198, 172, 143),
            ),
            width: 90,
            height: 28,
            child: Center(
              child: Row(
                children: [
                  MyDivider(
                      thickness: 0.3,
                      horizontalPadding: 0,
                      dividerColor: Color.fromARGB(255, 37, 36, 34)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 9),
                    child: Text(
                      "Order",
                      style: GoogleFonts.dosis(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 37, 36, 34)),
                    ),
                  ),
                  MyDivider(
                      thickness: 0.3,
                      horizontalPadding: 0,
                      dividerColor: Color.fromARGB(255, 37, 36, 34)),
                ],
              ),
            ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color.fromARGB(255, 198, 172, 143),
          ),
          width: 80,
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    count++;
                  });
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      border: Border.all(color: primaryColor),
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    Icons.add,
                    size: 18,
                    color: secondaryColor,
                  ),
                ),
              ),
              Text(
                '${count}x',
                style: GoogleFonts.dosis(
                    fontWeight: FontWeight.bold, fontSize: 17),
              ),
              InkWell(
                onTap: () {
                  if (count > 0) {
                    setState(() {
                      count--;
                    });
                  }
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      border: Border.all(color: primaryColor),
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      Icon(
                        Icons.minimize,
                        size: 18,
                        color: secondaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyShopCardAddToCard extends StatefulWidget {
  const MyShopCardAddToCard({
    super.key,
  });

  @override
  State<MyShopCardAddToCard> createState() => _MyShopCardAddToCardState();
}

class _MyShopCardAddToCardState extends State<MyShopCardAddToCard> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 30,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: blackColor,
        ),
        width: 80,
        height: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  count++;
                });
              },
              child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                    color: secondaryColor,
                    border: Border.all(color: secondaryColor),
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  Icons.add,
                  size: 18,
                  color: whiteColor,
                ),
              ),
            ),
            Text(
              '${count}x',
              style: GoogleFonts.dosis(
                  fontWeight: FontWeight.bold, fontSize: 16, color: whiteColor),
            ),
            InkWell(
              onTap: () {
                if (count > 0) {
                  setState(() {
                    count--;
                  });
                }
              },
              child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                    color: secondaryColor,
                    border: Border.all(color: secondaryColor),
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                  children: [
                    Icon(
                      Icons.minimize,
                      size: 17,
                      color: whiteColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyWaiterAddToCard extends StatefulWidget {
  const MyWaiterAddToCard({
    super.key,
  });

  @override
  State<MyWaiterAddToCard> createState() => _MyWaiterAddToCardState();
}

class _MyWaiterAddToCardState extends State<MyWaiterAddToCard> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 30,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: secondaryColor,
        ),
        width: 80,
        height: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  count++;
                });
              },
              child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                    color: blackColor,
                    border: Border.all(color: secondaryColor),
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  Icons.add,
                  size: 18,
                  color: secondaryColor,
                ),
              ),
            ),
            Text(
              '${count}x',
              style: GoogleFonts.dosis(
                  fontWeight: FontWeight.bold, fontSize: 16, color: whiteColor),
            ),
            InkWell(
              onTap: () {
                if (count > 0) {
                  setState(() {
                    count--;
                  });
                }
              },
              child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                    color: blackColor,
                    border: Border.all(color: secondaryColor),
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                  children: [
                    Icon(
                      Icons.minimize,
                      size: 17,
                      color: secondaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// ignore: must_be_immutable
// class MyAddToCardTwo extends StatefulWidget {
//   MyAddToCardTwo({
//     super.key,
//     required this.count,
//     required this.productId,
//   });
//   late int count;
//   final String productId;

//   @override
//   State<MyAddToCardTwo> createState() => _MyAddToCardTwoState();
// }

// class _MyAddToCardTwoState extends State<MyAddToCardTwo> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 30,
//       height: 90,
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(50),
//           color: primaryColor,
//         ),
//         width: 80,
//         height: 20,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             InkWell(
//               onTap: () async {},
//               child: Container(
//                 width: 25,
//                 height: 25,
//                 decoration: BoxDecoration(
//                     color: secondColor,
//                     border: Border.all(color: primaryColor),
//                     borderRadius: BorderRadius.circular(50)),
//                 child: Icon(
//                   Icons.add,
//                   size: 15,
//                   color: primaryColor,
//                 ),
//               ),
//             ),
//             Text(
//               '${widget.count}x',
//               style: GoogleFonts.dosis(
//                   fontWeight: FontWeight.bold, fontSize: 15.5),
//             ),
//             InkWell(
//               onTap: () async {
//                 if (widget.count > 0) {}
//               },
//               child: Container(
//                 width: 25,
//                 height: 25,
//                 decoration: BoxDecoration(
//                     color: secondColor,
//                     border: Border.all(color: primaryColor),
//                     borderRadius: BorderRadius.circular(50)),
//                 child: Column(
//                   children: [
//                     Icon(
//                       Icons.minimize,
//                       size: 15,
//                       color: primaryColor,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
