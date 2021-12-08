import 'package:flutter/material.dart';
import 'package:pense_responda/screens/splash_screen.dart';
import 'package:pense_responda/screens/start_screen.dart';
import 'package:pense_responda/widgets/search.dart';

import './screens/auth_screen.dart';
import './utils/app_routes.dart';
import './utils/colors.dart';
import './screens/home_screen.dart';
//import './screens/init_chat_screen.dart';
//import './screens/chat_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pense&Responda',
      theme: ThemeData(
        primaryColor: Colors.grey,
        backgroundColor: AppColors.darkBackgroundColor,
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: AppColors.greenButton,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80),
          ),
        ),
      ),
      routes: {
        AppRoutes.SPLASH_SCREEN: (ctx) => SplashScreen(),
        AppRoutes.AUTH_SCREEN: (ctx) => AuthScreen(),
        AppRoutes.HOME_SCREEN: (ctx) => HomeScreen(),
        AppRoutes.START_SCREEN: (ctx) => StartScreen(),
        //     AppRoutes.INIT_CHAT_SCREEN: (ctx) => InitChatScreen(),
        //     AppRoutes.CHAT_SCREEN: (ctx) => ChatScreen(),
      },
    );
  }
}
