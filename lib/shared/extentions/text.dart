import 'package:flutter/material.dart';

import 'package:desktop_demo/shared/theme/colors.dart';

extension TextExtention on BuildContext {
  TextStyle? get titleLarge => Theme.of(this).textTheme.titleLarge;
  TextStyle? get titleMedium => Theme.of(this).textTheme.titleMedium;
  TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall;
  TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge;
  TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get bodySmall => Theme.of(this).textTheme.bodySmall;

  //Custom TextStyles
  TextStyle? get appBarTitle => Theme.of(this).textTheme.titleLarge?.copyWith(color: AppColors.appBarTitleColor);
  TextStyle? get button => Theme.of(this).textTheme.bodyLarge?.copyWith(color: AppColors.buttonTextColor, fontWeight: FontWeight.w500);
}