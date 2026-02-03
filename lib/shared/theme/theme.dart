import 'package:flutter/material.dart';

import 'package:desktop_demo/shared/theme/colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: _appBarTheme,
    textTheme: _textTheme,
    buttonTheme: _buttonTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
    dialogTheme: _dialogTheme,
  );

  static final _appBarTheme = AppBarTheme(
    backgroundColor: AppColors.primaryColor,
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
    bodyLarge: TextStyle(
      color: AppColors.textColor,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
  );

  static final _buttonTheme = ButtonThemeData(
    buttonColor: AppColors.buttonColor,
    disabledColor: AppColors.disabledButtonColor,
  );

  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.buttonColor,
      foregroundColor: AppColors.buttonTextColor,
      disabledBackgroundColor: AppColors.disabledButtonColor,
      minimumSize: Size(120, 42),
      textStyle: _textTheme.titleMedium,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  );

  static final _dialogTheme = DialogThemeData(
    backgroundColor: AppColors.dialogBackgroundColor,
    titleTextStyle: _textTheme.titleMedium,
    contentTextStyle: _textTheme.bodyLarge,
  );
}