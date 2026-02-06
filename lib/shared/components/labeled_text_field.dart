import 'package:flutter/material.dart';

import 'package:desktop_demo/shared/components/text_field.dart';
import 'package:desktop_demo/shared/extentions/text.dart';

class LabeledTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final double? width;
  final String label;
  final bool readOnly;
  final bool isBigField;

  const LabeledTextField({required this.controller, required this.label, this.hintText, this.width, this.readOnly = false, this.isBigField = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16, bottom: 2),
          child: Text(
            label,
            style: context.label,
          ),
        ),
        isBigField
            ? AppTextField.big(controller: controller, hintText: hintText, readOnly: readOnly)
            : AppTextField(hintText: hintText, controller: controller, width: width, readOnly: readOnly,),
      ],
    );
  }
}
