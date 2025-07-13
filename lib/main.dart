import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:stylish/core/utils/constants.dart';
import 'package:stylish/features/auth/presentation/forgotpassword_screen.dart';
import 'package:stylish/features/auth/presentation/login_screen.dart';
import 'package:stylish/features/auth/presentation/signup_screen.dart';
import 'package:stylish/features/get_started/presentation/get_started_screen.dart';
import 'package:stylish/features/home_screen/domain/entities/product_entity.dart';
import 'package:stylish/features/home_screen/presentation/home_screen.dart';
import 'package:stylish/features/home_screen/presentation/screens/trending_products_screen.dart';
import 'package:stylish/features/on_boarding/presentation/on_boarding_screen.dart';
import 'package:stylish/features/splash/presentation/splash_screen.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(ProductEntityAdapter());
 await Hive.openBox(KFeaturedBox);
  runApp(const Stylish());
  
}

class Stylish extends StatelessWidget {
  const Stylish({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Montserrat'
      ),
     
      debugShowCheckedModeBanner: false,
      routes: {
        "onboardingscreen":(context)=>OnBoardingScreen(),
        "loginscreen":(context)=>LoginScreen(),
        "signupscreen":(context)=>SignupScreen(),
        "forgotpasswordscreen":(context)=>ForgotpasswordScreen(),
        "getstartedscreen":(context)=>GetStartedScreen(),
        "homescreen":(context)=>HomeScreen(),
        "trendingproductsscreen":(context)=>TrendingProductsScreen(),
      },
      home: SplashScreen(),
    );
      
  }
}
