import 'package:flutter/material.dart';
import 'package:stylish/core/utils/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon, required this.obsecureText,
  });
  final String hintText;
  final Icon prefixIcon;
  final Icon? suffixIcon;
  final bool obsecureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText:obsecureText ,
      cursorColor: Constants.kMainColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffF3F3F3),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
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
    );
  }
}
