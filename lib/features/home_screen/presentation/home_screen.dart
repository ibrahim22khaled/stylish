import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish/features/home_screen/presentation/screens/home_screen_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: Color(0xffF9F9F9),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset("assets/icons/menu.svg"),
            Image.asset("assets/images/homscreenlogo.jpg",
            width: 111.7,
            height: 31.03,),
            Image.asset("assets/images/useravatar.jpg",
            width: 40,
            height: 40,),
          ],
        ),
      ),
      body: HomeScreenDetails(), 
    );
  }
}