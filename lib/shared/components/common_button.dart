import 'package:desktop_demo/shared/theme/colors.dart';
import 'package:flutter/material.dart';

import 'package:desktop_demo/shared/extentions/text.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double width;
  final String text;
  final bool isActive;

  const AppButton({required this.onPressed, required this.width, required this.text, this.isActive = true, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 42,
      child: ElevatedButton(
        onPressed: isActive ? onPressed : null,
        child: Center(
          child: Text(
            text,
            style: context.button,
          ),
        ),
      ),
    );
  }

  factory AppButton.primary({required VoidCallback? onPressed, required String text, bool isActive = true}) => AppButton(onPressed: onPressed, width: 160, text: text, isActive: isActive);

  factory AppButton.short({required VoidCallback? onPressed, required String text, bool isActive = true}) => AppButton(onPressed: onPressed, width: 120, text: text, isActive: isActive);
}
