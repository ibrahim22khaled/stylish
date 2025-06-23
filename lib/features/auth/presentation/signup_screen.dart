import 'package:flutter/material.dart';
import 'package:stylish/features/auth/presentation/screens/signup_screen_details.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignupScreenDetails(),
    );
  }
}