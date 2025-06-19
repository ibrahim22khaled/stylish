import 'package:flutter/material.dart';
import 'package:stylish/features/auth/presentation/screens/login_screen_details.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LoginScreenDetails(),
    );
  }
}