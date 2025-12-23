import 'package:flutter/material.dart';
import 'package:picknest/ui/home/home_screen.dart';
import 'package:picknest/ui/home/tabs/explore/product_details/cart/cart_screen.dart';
import 'package:picknest/ui/home/tabs/explore/product_details/product_details.dart';
import 'package:picknest/ui/home/tabs/explore/shop_now/product_shoes.dart';
import 'package:picknest/ui/home/tabs/fav/fav_tab.dart';
import 'package:picknest/ui/home/tabs/profile/profile_tab.dart';
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
      initialRoute: AppRoutes.onBoardingScreen ,
      routes:{
        AppRoutes.onBoardingScreen:(context) =>OnBoardingScreen(),
        AppRoutes.loginScreen:(context) =>LoginScreen(),
        AppRoutes.registerScreen:(context) =>RegisterScreen(),
        AppRoutes.homeScreen:(context) =>HomeScreen(),
        AppRoutes.profileScreen:(context) =>ProfileTab(),
        AppRoutes.favScreen:(context) =>FavTab(),
        AppRoutes.cartScreen:(context) =>CartScreen(),
        AppRoutes.productScreen:(context) =>ProductDetails(),
        AppRoutes.productShoesScreen:(context) =>ProductShoes(),
        AppRoutes.productScreen:(context) =>ProductDetails(),
        AppRoutes.categoryMenScreen:(context) =>ProductDetails()
      },
    );
  }
}
