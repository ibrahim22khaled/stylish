import 'package:flutter/material.dart';
import 'package:stylish/core/utils/constants.dart';
import 'package:stylish/core/utils/size_config.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
  });
  final String hintText;
  final Icon prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.screenWidth! / 15,
            ),
      child: TextField(
        cursorColor: Constants.kMainColor,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffF3F3F3),
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w900,
            color: Color(0xff676767),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Color(0xffA8A8A9)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Constants.kMainColor),
          ),
        ),
      ),
    );
  }
}
