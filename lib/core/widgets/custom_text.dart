import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({required this.text, required this.fontWeight, required this.fontSize,  this.fontFamily, required this.textColor});
  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final String?fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      color: textColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    ),);
  }
}