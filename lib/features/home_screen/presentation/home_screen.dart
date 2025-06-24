import 'package:flutter/material.dart';
import 'package:stylish/core/widgets/custom_app_bar.dart';
import 'package:stylish/features/home_screen/presentation/screens/home_screen_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar:AppBar(
        backgroundColor: Color(0xffF9F9F9),
        title: CustomAppBar(),
      ),
      body: HomeScreenDetails(), 
    );
  }
}