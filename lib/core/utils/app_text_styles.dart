import 'package:flutter/material.dart';
import 'package:weatherio/core/utils/app_colors.dart';

abstract class CustomTextStyles {
  static const pacifico300style54 = TextStyle(
    fontFamily: 'Pacifico',
    fontSize: 54,
    fontWeight: FontWeight.w300,
    color: Colors.white,
  );

  static const poppins600style26 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 22,
    fontWeight: FontWeight.w600,
color: AppColors.second,
  );

  static const defaultstyle =
      TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400);
}
