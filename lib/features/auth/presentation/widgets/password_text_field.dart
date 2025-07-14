import 'package:flutter/material.dart';
import 'package:stylish/core/utils/constants.dart';
import 'package:stylish/core/utils/size_config.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key, required this.hintText});
  final String hintText;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth! / 15),
      child: TextField(
        obscureText: _obscureText,
        cursorColor: kMainColor,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffF3F3F3),
          prefixIcon: Icon(Icons.lock),
          suffixIcon: IconButton(
            icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
          hintText: widget.hintText,
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
            borderSide: BorderSide(color: kMainColor),
          ),
        ),
      ),
    );
  }
}
