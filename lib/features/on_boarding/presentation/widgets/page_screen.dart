import 'package:flutter/material.dart';
import 'package:stylish/features/on_boarding/presentation/widgets/page_screen_item.dart';

class PageScreen extends StatelessWidget {
  const PageScreen({super.key,  required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageScreenItem(
          image: 'assets/images/onboarding1.png',
          title: "Choose Products",
        ),
        PageScreenItem(
          image: 'assets/images/onboarding2.png',
          title: "Make Payment", 
        ),
        PageScreenItem(
          image: 'assets/images/onboarding3.png',
          title: "Get Your Order", 
        ),
      ],
    );
  }
}
