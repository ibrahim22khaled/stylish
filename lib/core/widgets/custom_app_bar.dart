import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:stylish/core/widgets/custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset("assets/icons/menu_icon.svg"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/homescreenlogo.jpg",
                width: 38,
                height: 31,),
                const Gap(5),
                CustomText(text: "Stylish", fontWeight: FontWeight.bold, fontSize:18, textColor: Color(0xff4392F9),fontFamily: 'LibreCaslon',)

              ],
            ),
            
            Image.asset("assets/images/useravatar.jpg",
            width: 40,
            height: 40,),
          ],
        );
      
  }
}