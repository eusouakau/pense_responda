import 'package:flutter/material.dart';
//import 'package:pense_responda/utils/colors.dart';
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
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(40, 40, 40, 1),
        ),
        child: Stack(
          children: [
            Center(
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(50, 90, 50, 15),
                              child: Image.asset(AppImages.logo),
                            ),
                            SizedBox(height: 10),
                            AuthCard(),
                          ],
                        ),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
