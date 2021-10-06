import 'package:flutter/material.dart';
import 'package:pense_responda/utils/colors.dart';
import 'package:pense_responda/utils/images.dart';
import '../widgets/auth_card.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 500,
                        height: 1500,
                        decoration: BoxDecoration(
                          color: AppColors.darkBackgroundColor,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(50, 150, 50, 10),
                              child: Image.asset(AppImages.logo),
                            ),
                            SizedBox(height: 10),
                            AuthCard(),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
          ),
        ],
      ),
    );
  }
}
