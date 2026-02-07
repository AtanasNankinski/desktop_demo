import 'package:flutter/material.dart';

import 'package:desktop_demo/shared/extentions/text.dart';
import 'package:desktop_demo/shared/theme/colors.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final double height;
  final bool readOnly;
  final bool isBigField;
  final double? width;
  final String? hintText;
  final Widget? suffix;

  const AppTextField({required this.controller, this.suffix, this.width, this.hintText, this.readOnly = false, this.height = 42, this.isBigField = false, super.key});

  factory AppTextField.search({required TextEditingController controller}) => AppTextField(controller: controller, width: 760, hintText: "Search");
  factory AppTextField.big({String? hintText, bool readOnly = false, Widget? suffix, required TextEditingController controller}) => AppTextField(readOnly: readOnly, controller: controller, hintText: hintText, suffix: suffix, isBigField: true, height: 126,);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        readOnly: readOnly,
        maxLines: isBigField ? null : 1,
        expands: isBigField,
        keyboardType: isBigField ? TextInputType.multiline : null,
        textAlignVertical: TextAlignVertical.top,
        controller: controller,
        style: context.bodyMedium,
        decoration: InputDecoration(
          hintText: hintText,
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
          suffixIcon: suffix,
        ),
      ),
    );
  }
}
