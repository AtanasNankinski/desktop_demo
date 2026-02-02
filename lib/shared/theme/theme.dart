import 'package:flutter/material.dart';

import 'package:desktop_demo/shared/theme/colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: _appBarTheme,
    textTheme: textTheme,
  );

  static final _appBarTheme = AppBarTheme(
    backgroundColor: AppColors.primaryColor,
  );

  static final textTheme = TextTheme(
    titleLarge: TextStyle(
      color: AppColors.textColor,
      fontSize: 28,
    ),
    titleMedium: TextStyle(
      color: AppColors.textColor,
      fontSize: 20,
    ),
    bodyLarge: TextStyle(
      color: AppColors.textColor,
      fontSize: 16,
    ),
  );
}