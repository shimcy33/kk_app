import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'color_palette.dart';

class FontPalette {
  static const themeFont = "Brandon";
  static const subFont = "Claude";

  ///14
  static TextStyle white14 =
      TextStyle(fontSize: 14.sp, fontFamily: themeFont, color: Colors.white);

  ///16
  static TextStyle green16W500 = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16.sp,
      fontFamily: themeFont,
      color: ColorPalette.primaryColor);

  ///18
  static TextStyle grey18W300 = TextStyle(
      fontSize: 18.sp,
      fontFamily: themeFont,
      fontWeight: FontWeight.w300,
      color: ColorPalette.grey);
  static TextStyle grey18W400Underline = TextStyle(
      fontSize: 18.sp,
      fontFamily: themeFont,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline,
      color: ColorPalette.grey);

  ///28
  static TextStyle green28W500 = TextStyle(
      fontSize: 28.sp,
      fontFamily: themeFont,
      fontWeight: FontWeight.w500,
      color: ColorPalette.primaryColor);

  ///36
  static TextStyle red36W700 = TextStyle(
      fontSize: 36.sp,
      fontFamily: subFont,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w700,
      color: ColorPalette.red);
}
