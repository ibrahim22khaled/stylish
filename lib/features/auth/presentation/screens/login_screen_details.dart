import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stylish/core/utils/constants.dart';
import 'package:stylish/core/utils/size_config.dart';
import 'package:stylish/core/widgets/custom_general_button.dart';
import 'package:stylish/core/widgets/custom_text.dart';
import 'package:stylish/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:stylish/features/auth/presentation/widgets/headline.dart';
import 'package:stylish/features/auth/presentation/widgets/password_text_field.dart';
import 'package:stylish/features/auth/presentation/widgets/social_media_contact.dart';

class LoginScreenDetails extends StatefulWidget {
  const LoginScreenDetails({super.key});

  @override
  State<LoginScreenDetails> createState() => _LoginScreenDetailsState();
}

class _LoginScreenDetailsState extends State<LoginScreenDetails> {
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Headline(firstLine: 'Welcome', secondLine: 'Back!',),
          const Gap(10),
          CustomTextField(
            hintText: "Username or Email",
            prefixIcon: Icon(Icons.person),
          ),
          const Gap(20),
          PasswordTextField(hintText: "Password"),
          const Gap(10),
          Padding(
            padding: EdgeInsets.only(right: SizeConfig.screenWidth! / 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('forgotpasswordscreen');
                  },
                  child: CustomText(
                    text: "Forgot password?",
                    fontWeight: FontWeight.w900,
                    fontSize: 12,
                    textColor: Constants.kMainColor,
                  ),
                ),
              ],
            ),
          ),
          const Gap(50),
          CustomGeneralButton(
            buttonName: "Login",
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
          const Gap(50),
          SocialMediaContact(text1: "Create An Account", text2: "Sign Up", destinationScreen: 'signupscreen',)
        ],
      ),
    );
  }
}
