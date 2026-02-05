import 'package:flutter/material.dart';

import 'package:desktop_demo/shared/extentions/text.dart';
import 'package:desktop_demo/shared/theme/colors.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final double width;
  final String hintText;

  const AppTextField({required this.controller, required this.width, required this.hintText, super.key});

  factory AppTextField.search({required TextEditingController controller}) => AppTextField(controller: controller, width: 760, hintText: "Search");

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 42,
      child: TextFormField(
        style: context.bodyMedium,
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: context.bodyLarge!.copyWith(color: AppColors.inputFieldHintColor),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.inputFieldBorderColor),
            borderRadius: BorderRadius.circular(16),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.inputFieldBorderColor),
            borderRadius: BorderRadius.circular(16),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.inputFieldBorderColor),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        controller: controller,
      ),
    );
  }
}
