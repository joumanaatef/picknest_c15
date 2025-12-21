import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onPressed;
   String text;
  TextStyle? textStyle;
  Color? backgroundColor;
   CustomButton({super.key,
     required this.onPressed,
     required this.text,
     this.backgroundColor=AppColors.whiteColor,
     this.textStyle,
   });
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: EdgeInsets.symmetric(
            vertical: height*0.01
          )
        ),
          onPressed: onPressed,
          child: Text(text,style: textStyle?? AppStyles.semi20Black,)
            ),
    );
  }
}
