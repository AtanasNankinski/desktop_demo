import 'package:flutter/material.dart';

import 'package:desktop_demo/shared/extentions/text.dart';
import 'package:desktop_demo/shared/theme/colors.dart';

class AppDivider extends StatelessWidget {
  final String? label;

  const AppDivider({this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(label != null) Padding(
          padding: EdgeInsets.only(left: 16, bottom: 2),
          child: Text(
            label!,
            style: context.label,
          ),
        ),
        Divider(
          height: 2,
          color: AppColors.dividerColor,
        ),
      ],
    );
  }
}
