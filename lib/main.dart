import 'package:flutter/material.dart';
import 'package:picknest/ui/home/home_screen.dart';
import 'package:picknest/ui/login/login_screen.dart';
import 'package:picknest/ui/login/register_screen.dart';
import 'package:picknest/ui/onBoarding/onBoarding_screen.dart';
import 'package:picknest/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:AppRoutes.onBoardingScreen,
      routes:{
        AppRoutes.onBoardingScreen:(context) =>OnBoardingScreen(),
        AppRoutes.loginScreen:(context) =>LoginScreen(),
        AppRoutes.registerScreen:(context) =>RegisterScreen(),
        AppRoutes.homeScreen:(context) =>HomeScreen(),
      },
    );
  }
}
