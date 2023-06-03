import 'package:flutter/material.dart';

class MyListview extends StatelessWidget {
  const MyListview({
    Key? key,
    required this.posts,
    required this.postHeight,
    required this.listHeight,
    required this.listviewCount,
    required this.listwidth,
    required this.postWidth,
    required this.scrollDirection,
    required this.padding,
  }) : super(key: key);

  final List posts;
  final int listviewCount;
  final double postHeight, listHeight, listwidth, postWidth;
  final Axis scrollDirection;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: listwidth,
      height: listHeight,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: padding,
            child: SizedBox(
                width: postWidth,
                height: postHeight,
                child: posts.elementAt(index)),
          );
        },
        itemCount: listviewCount,
        scrollDirection: scrollDirection,
      ),
    );
  }
}
