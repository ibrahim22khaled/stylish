import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stylish/core/utils/constants.dart';
import 'package:stylish/core/utils/size_config.dart';
import 'package:stylish/core/widgets/custom_general_button.dart';
import 'package:stylish/core/widgets/custom_text.dart';
import 'package:stylish/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:stylish/features/auth/presentation/widgets/social_media_icon.dart';

class LoginScreenDetails extends StatelessWidget {
  const LoginScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize! * 5,horizontal: SizeConfig.screenWidth! / 15),
            child: Row(
              children: [
                CustomText(text: "Welcome\nBack!", fontWeight: FontWeight.bold, fontSize: 36, textColor: Colors.black)
              ],
            ),
          ),
          const Gap(10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth! / 15),
            child: CustomTextField(hintText: "Username or Email", prefixIcon: Icon(Icons.person), obsecureText: false,),
            
          ),
         const Gap(20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth! / 15),
            child: CustomTextField(hintText: "Password", prefixIcon: Icon(Icons.lock),suffixIcon: Icon(Icons.visibility), obsecureText: true,),
          ),
          const Gap(10),
          Padding(
            padding:  EdgeInsets.only(right:SizeConfig.screenWidth! / 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(text: "Forgot pasword?", fontWeight: FontWeight.w900, fontSize: 12, textColor: Constants.kMainColor)
              ],
            ),
          ),
          const Gap(50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth! / 15),
            child:CustomGeneralButton(buttonName: "Login", fontWeight: FontWeight.w600, fontSize: 20)
          ),
          const Gap(50),
          Column(
            children: [
              CustomText(text: "- OR Continue with -", fontWeight: FontWeight.w300, fontSize: 12, textColor: const Color(0xff676767)),
              const Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaIcon(iconImage: 'assets/images/google.png'),
                  const Gap(10),
                  SocialMediaIcon(iconImage: 'assets/images/apple.png'),
                  const Gap(10),
                  SocialMediaIcon(iconImage: 'assets/images/facebook.png'),
                ],
              ),
              const Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(text: 'Create An Account', fontWeight: FontWeight.w100, fontSize: 14, textColor: Color(0xff575757)),
                  const Gap(5),
                  Text("Sign Up",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Constants.kMainColor,
                      decorationThickness: 1, 
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Constants.kMainColor, 
                    ),
                  )
                ],
              )
      
            ],
          )
        ],
      ),
    );
  }
}