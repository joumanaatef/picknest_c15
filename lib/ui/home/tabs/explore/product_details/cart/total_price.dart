import 'package:flutter/material.dart';
import '../../../../../../utils/app_colors.dart';
import '../../../../../../utils/app_styles.dart';

class TotalPrice extends StatelessWidget {
  String title;
  VoidCallback? onPressed;

  TotalPrice({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Total price\n  EGP 3,500",
          style: AppStyles.medium18Black,
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.blueLightColor,
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.06,
              vertical: height * 0.018,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          onPressed: onPressed,
          label: Text(
            title,
            style: AppStyles.medium18Green,
          ),
        ),
      ],
    );
  }
}
