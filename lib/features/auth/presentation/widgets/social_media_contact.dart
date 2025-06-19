import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stylish/core/utils/constants.dart';
import 'package:stylish/core/widgets/custom_text.dart';
import 'package:stylish/features/auth/presentation/widgets/social_media_icon.dart';

class SocialMediaContact extends StatelessWidget {
  const SocialMediaContact({
    super.key,
    required this.text1,
    required this.text2, required this.destinationScreen,
    
  });
  final String text1;
  final String text2;
  final String destinationScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: "- OR Continue with -",
          fontWeight: FontWeight.w300,
          fontSize: 12,
          textColor: const Color(0xff676767),
        ),
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
            CustomText(
              text: text1,
              fontWeight: FontWeight.w100,
              fontSize: 14,
              textColor: Color(0xff575757),
            ),
            // const Gap(1),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(destinationScreen);
              },
              child: Text(
                text2,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Constants.kMainColor,
                  decorationThickness: 1,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Constants.kMainColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
