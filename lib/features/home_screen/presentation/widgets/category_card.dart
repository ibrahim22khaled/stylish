import 'package:flutter/material.dart';
import 'package:stylish/core/utils/size_config.dart';
import 'package:stylish/core/widgets/custom_text.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.only(left: SizeConfig.defaultSize! * 2),
            child: Container(
              height: 87,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child:Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Column(children: [
                      CircleAvatar(
                        radius: 28,
                        child: Image.asset("assets/images/beauty.jpg"),
                      ),
                      CustomText(text: "Beauty", fontWeight: FontWeight.w100, fontSize: 10, textColor: Colors.black)
                    ],),
                  ],
                ),
              )
            ),
          );
  }
}