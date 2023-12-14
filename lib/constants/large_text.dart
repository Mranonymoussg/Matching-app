import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:matching_app/constants/color.dart';

class LargeText extends StatelessWidget {
  final double size;
  final Color Colour;
  final String text;
  LargeText(
      {super.key,
      this.size = 30,
      this.Colour = headingColor,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: this.Colour,
        fontSize: this.size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
