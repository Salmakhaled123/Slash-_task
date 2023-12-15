import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  ColorItem({Key? key, required this.isPicked, required this.color})
      : super(key: key);
  final bool isPicked;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isPicked
        ? CircleAvatar(
            radius: 26,
            backgroundColor: Colors.pink,
            child: CircleAvatar(backgroundColor: color, radius: 22))
        : CircleAvatar(
            backgroundColor: color,
            radius: 24,
          );
  }
}
