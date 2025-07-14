import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stylish/core/utils/constants.dart';
import 'package:stylish/core/utils/size_config.dart';
import 'package:stylish/core/widgets/custom_general_button.dart';
import 'package:stylish/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:stylish/features/auth/presentation/widgets/headline.dart';
import 'package:stylish/features/auth/presentation/widgets/password_text_field.dart';
import 'package:stylish/features/auth/presentation/widgets/social_media_contact.dart';

class SignupScreenDetails extends StatelessWidget {
  const SignupScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Headline(firstLine: 'Create an', secondLine: 'Account',),
       const Gap(10),
       CustomTextField(
         hintText: "Username or Email",
         prefixIcon: Icon(Icons.person),
       ),
          const Gap(20),
          PasswordTextField(hintText: "Password"),
          const Gap(20),
          PasswordTextField(hintText: "Confirm Password"),
            const Gap(20),

          Padding(
            padding: EdgeInsets.only(left: SizeConfig.screenWidth! / 15),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                maxLines: 2,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff676767),
                  ), // Default style
                  children: [
                    TextSpan(text: 'By clicking the'),
                    TextSpan(
                      text: ' Register ',
                      style: TextStyle(
                        color:kMainColor,
                      ), // Specific word color
                    ),
                    TextSpan(text: 'button, you agree\nto the public offer.'),
                  ],
                ),
              ),
            ],
            ),
          ),
          const Gap(50),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('getstartedscreen');
            },
            child: CustomGeneralButton(
              buttonName: "Create Account",
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          const Gap(50),
          SocialMediaContact(text1: "I Already Have An Account", text2: "Login", destinationScreen: 'loginscreen',)



      ]
    );
  }
}