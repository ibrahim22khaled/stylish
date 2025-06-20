import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stylish/core/utils/size_config.dart';
import 'package:stylish/core/widgets/custom_general_button.dart';
import 'package:stylish/core/widgets/custom_text.dart';

class GetStartedScreenDetails extends StatelessWidget {
  const GetStartedScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(

          "assets/images/getstarted.png",
          fit: BoxFit.fill,
          height: SizeConfig.screenheight,
        ),
        Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                  stops: [0.7, 1.0], // Gradient starts 70% from top, fully dark at bottom
                ),
              ),
            ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 5,
          right: 0,
          left: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: "You want",
                    fontWeight: FontWeight.w600,
                    fontSize: 37,
                    textColor: Colors.white,
                  ),
                ],
              ),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomText(
                    text: "Authentic, here",
                    fontWeight: FontWeight.w600,
                    fontSize: 37,
                    textColor: Colors.white,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  CustomText(
                    text: "you go",
                    fontWeight: FontWeight.w600,
                    fontSize: 37,
                    textColor: Colors.white,
                  ),
                ],
              ),
              const Gap(10),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  CustomText(
                    text: "Find it here, buy it now!",
                    fontWeight: FontWeight.w100,
                    fontSize: 12,
                    textColor: Colors.white,
                  ),
                ],
              ),

              const Gap(40),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 3),
                child: CustomGeneralButton(
                  buttonName: "Get Started",
                  fontWeight: FontWeight.w600,
                  fontSize: 23,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
