import 'package:flutter/material.dart';
import 'package:stylish/core/utils/constants.dart';

class FloatingActionButtonImpl extends StatelessWidget {
  const FloatingActionButtonImpl({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: 58,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 4)),
        ],
      ),
      child: FloatingActionButton(
        onPressed: () {
        },
        backgroundColor: Colors.white,
        splashColor: Constants.kMainColor, // Ripple color when tapped
        focusColor: Constants.kMainColor, // Color when focused
        hoverColor: Constants.kMainColor, // Color when hovered
        elevation: 8,
        child: Icon(Icons.shopping_cart, color: Colors.black, size: 30),
      ),
    );
  }
}
