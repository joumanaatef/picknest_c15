
import 'package:flutter/material.dart';
import 'package:picknest/ui/onBoarding/widget/onBoarding_data.dart';
import 'package:picknest/ui/onBoarding/widget/onBoarding_page.dart';

import '../../utils/app_routes.dart';
class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}
class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController=PageController();
  int currentIndex=0;
  @override
  void initState() {
    pageController.addListener(() {
      int newIndex = pageController.page?.round() ?? 0;
      if (newIndex != currentIndex) {
        setState(() {
          currentIndex = newIndex;
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child:PageView.builder(
                itemBuilder: (context, index) {
                final data = OnBoardingData.onBoardingData[index];
                  return OnBoardingPage(
                    onBoardingData: data,
                    onNext: nextButton,
                    onBack: backButton,
                    onFinish: finishButton,
                  );
                },
                itemCount: OnBoardingData.onBoardingData.length,
                controller: pageController,
              ) ),
        ],
      ),
    );
  }
  void nextButton() {
    if (currentIndex < OnBoardingData.onBoardingData.length - 1) {
      pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut);
    }
  }
  void backButton(){
    if (currentIndex > 0) {
      pageController.previousPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut);
    }
  }
  void finishButton() {
    Navigator.pushReplacementNamed(context, AppRoutes.loginScreen);
  }
}
