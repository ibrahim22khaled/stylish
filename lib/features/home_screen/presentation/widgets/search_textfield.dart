import 'package:flutter/material.dart';
import 'package:stylish/core/utils/constants.dart';
import 'package:stylish/core/utils/size_config.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 2),
      child: TextField(
        cursorColor: Constants.kMainColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(12.0),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.search, color: Color(0xffBBBBBB)),
          hintText: "Search any Product..",
          hintStyle: TextStyle(fontSize: 16, color: Color(0xffBBBBBB)),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
