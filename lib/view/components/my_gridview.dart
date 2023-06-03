import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({
    Key? key,
    required this.posts,
    required this.gridCount,
    required this.gridCrossCount,
    required this.gridViewHeight,
    required this.gridViewWidth,
    required this.padding,
    required this.scrollDirection,
  }) : super(key: key);

  final int gridCount, gridCrossCount;
  final List posts;
  final double gridViewHeight, gridViewWidth;
  final EdgeInsets padding;
  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: gridViewWidth,
      height: gridViewHeight,
      child: GridView.builder(
        scrollDirection: scrollDirection,
        itemCount: gridCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: gridCrossCount),
        itemBuilder: (context, index) {
          return Padding(
            padding: padding,
            child: posts.elementAt(index),
          );
        },
      ),
    );
  }
}
