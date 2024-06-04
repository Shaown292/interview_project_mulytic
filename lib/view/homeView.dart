import 'package:flutter/material.dart';
import 'package:untitled2/consts/app_text_style.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Text(
        'Welcome to Home',
        style: AppTextStyle.robotoHintTextW400Size17,
      ),
    );
  }
}
