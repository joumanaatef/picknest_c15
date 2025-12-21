import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:picknest/utils/app_colors.dart';
class AppStyles{
  static TextStyle bold24White=GoogleFonts.inter(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color:AppColors.whiteColor
  );
  static TextStyle regular20White=GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color:AppColors.whiteColor
  );
  static TextStyle semi20Gray=GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.grayColor
  );
  static TextStyle semi20Black=GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.blackColor
  );
  static TextStyle semi20White=GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.whiteColor
  );
  static TextStyle bold20Black=GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.blackColor
  );
}