import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled2/consts/app_color.dart';

class AppTextStyle {
  static TextStyle robotoBlackW700Size25 = GoogleFonts.roboto(
    textStyle: const TextStyle(
        color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700),
  );
  static TextStyle robotoPrimary700Size25 = GoogleFonts.roboto(
    textStyle: const TextStyle(
        color: AppColors.primaryColor, fontSize: 25, fontWeight: FontWeight.w700),
  );
  static TextStyle robotoHintTextW400Size17 = GoogleFonts.roboto(
    textStyle:  const TextStyle(color: AppColors.hintTextColor, fontSize: 17, fontWeight: FontWeight.w400),
  );

  static TextStyle robotoGreyTextW400Size13 = GoogleFonts.roboto(
    textStyle:  const TextStyle(color: AppColors.hintTextColor, fontSize: 13, fontWeight: FontWeight.w400),
  );
  static TextStyle robotoWhiteTextW500Size17 = GoogleFonts.roboto(
    textStyle:  const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
  );

}