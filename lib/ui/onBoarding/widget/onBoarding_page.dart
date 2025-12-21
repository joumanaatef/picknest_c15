import 'package:flutter/material.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import 'onBoarding_data.dart';
import 'onBoarding_item_widget.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key,
    required this.onBoardingData ,
    this.onNext,
    this.onBack,
    this.onFinish,
  });

  final OnBoardingData onBoardingData;
  final VoidCallback? onNext;
  final VoidCallback? onBack;
  final VoidCallback? onFinish;
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.asset(onBoardingData.imgPath,fit:BoxFit.fill,width: double.infinity,),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color:AppColors.greenColor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
            ),
            child:
            OnBoardingItemWidget(
              onBoardingData:OnBoardingData(
                  imgPath:onBoardingData.imgPath,
                  title:onBoardingData.title,
                description:onBoardingData.description,
                primaryText: onBoardingData.primaryText,
                secondaryText: onBoardingData.secondaryText
              ) ,
              onPrimaryPressed: onBoardingData.primaryText == 'finish'
                  ? onFinish
                  : onNext,
              onSecondaryPressed: onBack,
            ),

          ),
        ),
      ],
    );
  }
}
