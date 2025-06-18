import 'package:flutter/material.dart';
import 'package:stylish/features/splash/presentation/widgets/splash_screen_details.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SplashScreenDetails()
    );
  }
}