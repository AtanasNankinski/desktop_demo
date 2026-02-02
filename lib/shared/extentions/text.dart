import 'package:flutter/material.dart';

import 'package:desktop_demo/shared/theme/colors.dart';

extension TextExtention on BuildContext {
  TextStyle? get titleLarge => Theme.of(this).textTheme.titleLarge;
  TextStyle? get titleMedium => Theme.of(this).textTheme.titleMedium;
  TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge;

  //Custom TextStyles
  TextStyle? get appBarTitle => Theme.of(this).textTheme.titleLarge?.copyWith(color: AppColors.appBarTitleColor);
}