import 'package:flutter/material.dart';
import 'package:stylish/core/utils/constants.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({super.key, required this.iconImage});
  final String iconImage;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 29,
      backgroundColor:kMainColor,
      child: CircleAvatar(
        radius: 28,
        backgroundColor: Color(0xffFCF3F6),
        child: Image.asset(iconImage, width: 25, height: 25),
      ),
    );
  }
}
