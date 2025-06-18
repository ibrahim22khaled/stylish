import 'package:flutter/material.dart';
import 'package:stylish/core/utils/constants.dart';
import 'package:stylish/core/widgets/custom_text.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({super.key, required this.buttonName, required this.fontWeight, required this.fontSize});
  final String buttonName;
  final FontWeight fontWeight;
  final double fontSize;
  

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 55,
            decoration: BoxDecoration(
              color: Constants.kMainColor,
              borderRadius: BorderRadius.circular(6)
          
            ),
            child: Center(child: CustomText(text: buttonName, fontWeight: fontWeight, fontSize: fontSize, textColor: Colors.white,)),
          );
  }
}