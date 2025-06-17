import 'package:flutter/material.dart';
import 'package:stylish/features/on_boarding/presentation/widgets/on_boarding_screen_details.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingScreenDetails(),
    );
  }
}