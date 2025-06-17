import 'package:flutter/material.dart';
import 'package:stylish/core/utils/size_config.dart';

class SplashScreenDetails extends StatefulWidget {
  const SplashScreenDetails({super.key});

  @override
  State<SplashScreenDetails> createState() => _SplashDetailsState();
}

class _SplashDetailsState extends State<SplashScreenDetails> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
    Navigator.pushReplacementNamed(context, "onboardingscreen");
    });
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/splashimage.png",
          width: 275,
          height: 100,)
        ],
      ),
    );
  }
}