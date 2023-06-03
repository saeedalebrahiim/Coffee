import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 221, 217, 210),
            border: Border.all(color: Color.fromARGB(255, 221, 217, 210)),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SizedBox(
                height: 30,
                child: InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.search,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ),
            const Expanded(
                child: Padding(
              padding: EdgeInsets.only(bottom: 6),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search for a product ..."),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
