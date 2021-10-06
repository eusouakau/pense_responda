import 'package:flutter/material.dart';
import 'package:pense_responda/screens/auth_screen.dart';
import 'package:pense_responda/utils/colors.dart';
import 'package:pense_responda/utils/images.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1)).then(
      (value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => AuthScreen(),
        ),
      ),
    );
    return Scaffold(
      body: Container(
        width: 500,
        height: 1500,
        decoration: BoxDecoration(
          color: AppColors.darkBackgroundColor,
        ),
        child: Image.asset(AppImages.logo),
      ),
    );
  }
}