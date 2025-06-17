import 'package:flutter/material.dart';
import 'package:stylish/features/on_boarding/presentation/on_boarding_screen.dart';
import 'package:stylish/features/splash/presentation/splash_screen.dart';

void main() {
  runApp(const Stylish());
}

class Stylish extends StatelessWidget {
  const Stylish({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat'
      ),
     
      debugShowCheckedModeBanner: false,
      routes: {
        "onboardingscreen":(context)=>OnBoardingScreen()
      },
      home: SplashScreen(),
    );
      
  }
}
