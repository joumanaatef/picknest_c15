import 'package:flutter/material.dart';
import 'package:picknest/ui/home/widget/custom_button.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';
import 'onBoarding_data.dart';
class OnBoardingItemWidget extends StatelessWidget {
final  VoidCallback? onPrimaryPressed;
final  VoidCallback? onSecondaryPressed;
final OnBoardingData onBoardingData;
OnBoardingItemWidget({
    required this.onBoardingData,
  this.onPrimaryPressed,
  this.onSecondaryPressed
  });
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          onBoardingData.title,
          style:AppStyles.bold24White,
          textAlign: TextAlign.center,
        ),
        if (onBoardingData.description.isNotEmpty)
          Text(
            onBoardingData.description,
            textAlign: TextAlign.center,
            style:AppStyles.regular20White
          ),
     SizedBox(height: height*0.02),
    if (onBoardingData.primaryText != null && onBoardingData.secondaryText == null)
    CustomButton(
    onPressed: onPrimaryPressed?? (){},
    text: onBoardingData.primaryText!,
    ),
    if (onBoardingData.primaryText != null && onBoardingData.secondaryText != null)
       Column(
     children: [
       CustomButton(
         onPressed:onPrimaryPressed?? (){},
         text: onBoardingData.primaryText!,
       ),
       SizedBox(height: height*0.02,),
       CustomButton(
         onPressed:onSecondaryPressed?? () {},
         text:onBoardingData.secondaryText!,
         backgroundColor: AppColors.blackColor,
         textStyle:AppStyles.semi20White,
       ),
     ],
       )
      ],
    );
  }
}
