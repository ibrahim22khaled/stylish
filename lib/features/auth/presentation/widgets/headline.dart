import 'package:flutter/material.dart';
import 'package:stylish/core/utils/size_config.dart';
import 'package:stylish/core/widgets/custom_text.dart';

class Headline extends StatelessWidget {
  const Headline({super.key, required this.firstLine, required this.secondLine});
  final String firstLine;
  final String secondLine;

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.symmetric(
              vertical: SizeConfig.defaultSize! * 5,
              horizontal: SizeConfig.screenWidth! / 15,
            ),
            child: Row(
              children: [
                CustomText(
                  text: "$firstLine\n$secondLine",
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  textColor: Colors.black,
                ),
              ],
            ),
          );
  }
}