import 'package:flutter/material.dart';
import 'package:stylish/features/get_started/presentation/widgets/get_started_screen_details.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetStartedScreenDetails(),
    );
  }
}