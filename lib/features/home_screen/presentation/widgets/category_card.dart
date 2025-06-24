import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stylish/core/utils/size_config.dart';
import 'package:stylish/core/widgets/custom_text.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(left:SizeConfig.defaultSize! * 2),
      child: Container(
                height: 87,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child:Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10),
                      child: Row(
                        children: [
                          CategoryCardItem(image: "assets/images/beauty.jpg", cardTitle: "Beauty"),
                          const Gap(20),
                          CategoryCardItem(image: "assets/images/fashion.jpg", cardTitle: "Fashion"),
                          const Gap(20),
                          CategoryCardItem(image: "assets/images/kids.jpg", cardTitle: "Kids"),
                          const Gap(20),
                          CategoryCardItem(image: "assets/images/men.jpg", cardTitle: "Men"),
                          const Gap(20),
                          CategoryCardItem(image: "assets/images/women.jpg", cardTitle: "Women"),
                          const Gap(20),
                          CategoryCardItem(image: "assets/images/gifts.jpg", cardTitle: "Gifts"),
                        ],
                      ),
                    ),
                  ),
                )
              ),
    );
         
  }
}
class CategoryCardItem extends StatelessWidget {
  const CategoryCardItem({super.key, required this.image, required this.cardTitle});
  final String image;
  final String cardTitle;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          child: Image.asset(image),
        ),
        CustomText(
          text: cardTitle,
          fontWeight: FontWeight.w100,
          fontSize: 10,
          textColor: Colors.black,
        ),
      ],
    );
  }
}
