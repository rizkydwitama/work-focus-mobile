import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static final lightThemeMode = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.whiteColor,
    textTheme: Typography().black.apply(
      fontFamily: 'Inter'
    ),
  );
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.blackColor,
    textTheme: Typography().white.apply(
        fontFamily: 'Inter'
    ),
  );
}