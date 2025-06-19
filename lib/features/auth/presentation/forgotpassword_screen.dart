import 'package:flutter/material.dart';
import 'package:stylish/features/auth/presentation/screens/forgotpassword_screen_details.dart';

class ForgotpasswordScreen extends StatelessWidget {
  const ForgotpasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ForgotpasswordScreenDetails(),
    );
  }
}