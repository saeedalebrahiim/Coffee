import 'package:coffeeproject/model/globals/globals.dart';
import 'package:flutter/material.dart';

class AddToCard extends StatefulWidget {
  final Function()? onTapAdd;
  final Function()? onTapRemove;
  const AddToCard(
      {super.key, required this.onTapAdd, required this.onTapRemove});

  @override
  State<AddToCard> createState() => _AddToCardState();
}

class _AddToCardState extends State<AddToCard> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 221, 217, 210),
      width: 20,
      height: 100,
      child: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 221, 217, 210),
            width: 20,
            height: 100,
            child: Column(
              children: [
                InkWell(
                  onTap: widget.onTapAdd,
                  child: Icon(Icons.add),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 4.5),
                  child: Text(count.toString()),
                ),
                SizedBox(height: 0),
                InkWell(
                  onTap: widget.onTapRemove,
                  child: Icon(Icons.minimize),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
