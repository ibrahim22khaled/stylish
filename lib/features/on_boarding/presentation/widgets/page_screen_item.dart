import 'package:flutter/material.dart';
import 'package:stylish/core/utils/size_config.dart';

class PageScreenItem extends StatelessWidget {
  const PageScreenItem({required this.image, required this.title, this.subtitle, });
  final String image;
  final String title;
  final String? subtitle;
 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:SizeConfig.defaultSize! *20),
        SizedBox(
          height: SizeConfig.defaultSize! * 40,
          child: Image.asset(image,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
