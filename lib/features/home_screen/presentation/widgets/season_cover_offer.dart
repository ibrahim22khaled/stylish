import 'package:flutter/material.dart';
import 'package:stylish/core/utils/constants.dart';
import 'package:stylish/core/utils/size_config.dart';
import 'package:stylish/core/widgets/custom_text.dart';

class SeasonCoverOffer extends StatelessWidget {
  const SeasonCoverOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 270,
          width: 343,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
                child: Image.asset("assets/images/summer_sale_homescreen.jpg",
                height: 204,
                width: 343,),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize!*3.5 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: "New Arrivals", fontWeight: FontWeight.w500, fontSize: 20, textColor: Colors.black),
                        CustomText(text: "Summer’ 25 Collections", fontWeight: FontWeight.w100, fontSize: 16, textColor: Colors.black),
                      ],
                    ),
                    Container(
                      width: 90,
                      height: 28,
                      decoration: BoxDecoration(
                        color:Constants.kMainColor,
                        borderRadius: BorderRadius.circular(4)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(text: "View All", fontWeight: FontWeight.w700, fontSize: 12, textColor: Colors.white),
                          Icon(Icons.arrow_forward,
                          color: Colors.white,)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
  }
}