import 'package:flutter/material.dart';

import 'package:desktop_demo/shared/theme/colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: _appBarTheme,
    textTheme: _textTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
    dialogTheme: _dialogTheme,
    textButtonTheme: _textButtonTheme,
  );

  static final _appBarTheme = AppBarTheme(
    backgroundColor: AppColors.primaryColor,
    iconTheme: IconThemeData(color: AppColors.appBarTitleColor),
    titleTextStyle: _textTheme.titleMedium?.copyWith(color: AppColors.appBarTitleColor),
  );

  static final _textTheme = TextTheme(
    titleLarge: TextStyle(
      color: AppColors.textColor,
      fontSize: 28,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      color: AppColors.textColor,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      color: AppColors.textColor,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      color: AppColors.textColor,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      color: AppColors.textColor,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle(
      color: AppColors.textColor,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  );

  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.buttonColor,
      foregroundColor: AppColors.buttonTextColor,
      disabledBackgroundColor: AppColors.disabledButtonColor,
      minimumSize: Size(120, 42),
      textStyle: _textTheme.bodyLarge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  );

  static final _textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColors.textButtonText,
      backgroundColor: AppColors.textButtonBackground,
      textStyle: _textTheme.titleMedium,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1,
          color: AppColors.textButtonBorder,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  static final _dialogTheme = DialogThemeData(
    backgroundColor: AppColors.dialogBackgroundColor,
    titleTextStyle: _textTheme.titleMedium,
    contentTextStyle: _textTheme.bodyLarge,
  );
}