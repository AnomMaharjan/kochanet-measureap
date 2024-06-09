import 'package:flutter/material.dart';
import 'package:measureap/core/theme/app_colors.dart';
import 'package:measureap/core/theme/font_manager.dart';
import 'package:measureap/core/theme/styles_manager.dart';

class AppTheme {
  static final lightThemeMode = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundColor,
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.transparent,
    ),
    fontFamily: FontConstants.fontFamily,
    textTheme: TextTheme(
      titleLarge: getBoldStyle(
        color: AppColors.titleTextColor,
        fontSize: FontSize.s30,
      ),
      titleMedium: getSemiBoldStyle(
        color: AppColors.titleTextColor,
        fontSize: FontSize.s16,
      ),
      titleSmall: getRegularStyle(
        color: AppColors.titleTextColor,
        fontSize: FontSize.s12,
      ),
      bodyLarge: getRegularStyle(
        color: AppColors.descriptionTextColor,
        fontSize: FontSize.s14,
      ),
    ),
    scaffoldBackgroundColor: AppColors.backgroundColor,
  );
}
