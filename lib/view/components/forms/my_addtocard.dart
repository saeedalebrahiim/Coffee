import 'package:flutter/material.dart';

class AddToCard extends StatefulWidget {
  const AddToCard({super.key});

  @override
  State<AddToCard> createState() => _AddToCardState();
}

class _AddToCardState extends State<AddToCard> {
  int count = 0;

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
                  onTap: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 4.5),
                  child: Text(count.toString()),
                ),
                SizedBox(height: 0),
                InkWell(
                  onTap: () {
                    if (count > 0) {
                      setState(() {
                        count--;
                      });
                    }
                  },
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
