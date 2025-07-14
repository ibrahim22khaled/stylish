import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stylish/core/utils/constants.dart';
import 'package:stylish/core/utils/size_config.dart';
import 'package:stylish/core/widgets/custom_general_button.dart';
import 'package:stylish/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:stylish/features/auth/presentation/widgets/headline.dart';

class ForgotpasswordScreenDetails extends StatelessWidget {
  const ForgotpasswordScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Headline(firstLine: 'Forgot', secondLine: 'password?'),
        const Gap(10),
        CustomTextField(
          hintText: "Enter your email address",
          prefixIcon: Icon(Icons.mail),
        ),
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
                    TextSpan(
                      text: '*',
                      style: TextStyle(
                        color: kMainColor,
                      ), // Specific word color
                    ),
                    TextSpan(
                      text:
                          'We will send you a message to set or reset\nyour new password.',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Gap(50),
        CustomGeneralButton(
          buttonName: "Submit",
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ],
    );
  }
}
