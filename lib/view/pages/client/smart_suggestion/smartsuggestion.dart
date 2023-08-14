import 'package:coffeeproject/model/globals/globals.dart';
import 'package:coffeeproject/view/components/forms/my_divider.dart';
import 'package:coffeeproject/view/components/my_drawer.dart';
import 'package:coffeeproject/view/components/posts/productpost.dart';
import 'package:coffeeproject/view/pages/client/products/productlistscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chips_choice/chips_choice.dart';

class MultiSelect extends StatefulWidget {
  final List<String> items;
  const MultiSelect({super.key, required this.items});

  @override
  State<MultiSelect> createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {
  final List<String> _selectedItems = [];
  void _itemChange(String itemValue, bool isSelected) {
    setState(() {
      if (isSelected) {
        _selectedItems.add(itemValue);
      } else {
        _selectedItems.remove(itemValue);
      }
    });
  }

  void _cancel() {
    Navigator.pop(context);
  }

  void _submit() {
    Navigator.pop(context, _selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Select topics"),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.items
              .map((item) => CheckboxListTile(
                    value: _selectedItems.contains(item),
                    title: Text(item),
                    onChanged: (isChecked) => _itemChange(item, isChecked!),
                    controlAffinity: ListTileControlAffinity.leading,
                  ))
              .toList(),
        ),
      ),
      actions: [
        TextButton(onPressed: _cancel, child: const Text('Cancel')),
        ElevatedButton(onPressed: _submit, child: const Text('Submit'))
      ],
    );
  }
}

class SmartSuggestionScreen extends StatefulWidget {
  const SmartSuggestionScreen({super.key});

  @override
  State<SmartSuggestionScreen> createState() => _SmartSuggestionScreenState();
}

class _SmartSuggestionScreenState extends State<SmartSuggestionScreen> {
  bool isVisible = false;
  List<String> tags = [];
  List<String> options = [
    '#Hot drink',
    '#Cold drink',
    '#Bitter',
    '#Milk',
    '#Sweet',
  ];

  // List<String> _selectedItem = [];
  // void _showMultiSelect() async {
  //   final List<String> items = [
  //     '#Hot drink',
  //     '#Cold drink',
  //     '#Sweet',
  //     '#Bitter',
  //     '#Vanilla',
  //     '#Milk'
  //   ];
  //   final List<String> results = await showDialog(
  //     context: context,
  //     builder: (BuildContext ontext) {
  //       return MultiSelect(items: items);
  //     },
  //   );

  //   if (results != null) {
  //     setState(() {
  //       _selectedItem = results;
  //     });
  //   }
  // }

  // String tag = '1';
  // List<String> option = ["Tags", "Tags", "Tags", "Tags", "Tags", "Tags"];
  // List<String> tags = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const MyDrawer(),
        bottomSheet: Container(
          decoration: BoxDecoration(
              border: Border(top: BorderSide(color: blackColor, width: 2)),
              color: primaryColor),
          width: double.infinity,
          height: 45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                child: Container(
                  width: 150,
                  height: 33,
                  decoration: BoxDecoration(
                      border: Border.all(color: blackColor, width: 2),
                      borderRadius: BorderRadius.circular(10),
                      color: secondaryColor),
                  child: Center(
                    child: Text(
                      'Suggess',
                      style: GoogleFonts.dosis(
                          color: blackColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          shape: LinearBorder.bottom(
              side: BorderSide(color: blackColor, width: 2)),
          elevation: 0,
          iconTheme: IconThemeData(color: blackColor),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const ProducstScreen(),
                        transitionDuration: const Duration(milliseconds: 500),
                        transitionsBuilder: (_, a, __, c) => FadeTransition(
                              opacity: a,
                              child: c,
                            )),
                    (route) => false);
              },
              icon: FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: blackColor,
                size: 20,
              )),
          title: Text(
            'Marzocco',
            style: GoogleFonts.dosis(
                color: blackColor, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          backgroundColor: primaryColor,
        ),
        backgroundColor: secondaryColor,
        body: Column(
          children: AnimationConfiguration.toStaggeredList(
            duration: const Duration(milliseconds: 375),
            childAnimationBuilder: (widget) => SlideAnimation(
                horizontalOffset: 50,
                child: FadeInAnimation(
                  child: widget,
                )),
            children: [
              const SizedBox(
                height: 20,
              ),

              Visibility(
                visible: isVisible,
                child: Column(
                  children: [
                    Text(
                      'Your Suggestion',
                      style: GoogleFonts.dosis(
                        color: blackColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MyProductPost(
                        imageWidth: 100,
                        imageHeight: 100,
                        borderWidth: 0,
                        titleSize: 16,
                        stringSize: 14,
                        imagePath: 'lib/assets/images/11.png',
                        mainTitle: 'Latte',
                        stringOne: '70/000',
                        postColor: const Color.fromARGB(255, 221, 217, 210),
                        postBorderColor:
                            const Color.fromARGB(255, 221, 217, 210),
                        borderRadius: BorderRadius.circular(10),
                        tags: '#Hot drink #Milk #Sweet',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  MyDivider(
                      thickness: 0.3,
                      horizontalPadding: 20,
                      dividerColor: blackColor),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Choose your #Favorites flavor buddy',
                style: GoogleFonts.dosis(
                  color: blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ChipsChoice<String>.multiple(
                value: tags,
                onChanged: (val) => setState(() => tags = val),
                choiceItems: C2Choice.listFrom<String, String>(
                  source: options,
                  value: (i, v) => v,
                  label: (i, v) => v,
                ),
                runAlignment: WrapAlignment.start,
                wrapped: true,
                choiceCheckmark: true,
                choiceStyle: C2ChipStyle.filled(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                  selectedStyle: C2ChipStyle(
                    backgroundColor: blackColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                ),
              )
              // MyButton(
              //     onTap: _showMultiSelect,
              //     lable: 'Select your #favorites',
              //     buttomColor: primaryColorTwo,
              //     width: 150,
              //     fontWeight: FontWeight.bold,
              //     lableColor: Colors.black,
              //     borderRadius: BorderRadius.circular(12),
              //     height: 35,
              //     borderColor: Colors.white,
              //     borderWidth: 0.5,
              //     fontSize: 13),
              // SizedBox(
              //   height: 20,
              // ),
              // Wrap(
              //     children: _selectedItem
              //         .map((e) => Padding(
              //               padding: const EdgeInsets.all(3.0),
              //               child: Chip(label: Text(e)),
              //             ))
              //         .toList())
              //  ChipsChoice<String>.multiple(
              //   value: tags,
              //   onChanged: (va) => setState(() => tags = va),
              //   choiceItems: C2Choice.listFrom<String, String>(
              //     source: option,
              //     value: (i, v) => v,
              //     label: (i, v) => v,
              //   ),
              //   choiceStyle: C2ChipStyle.filled(),
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              // )
            ],
          ),
        ));
  }
}
