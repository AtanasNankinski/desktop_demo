import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final Widget? icon;
  final VoidCallback? onPressed;
  final double width;

  const AppTextButton({required this.text, required this.width, this.icon, this.onPressed, super.key});

  factory AppTextButton.defaultTextButton({required String text, VoidCallback? onPressed, Widget? icon}) => AppTextButton(text: text, width: 140, onPressed: onPressed, icon: icon);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 48,
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(text),
            if(icon != null)...[
              SizedBox(width: 8,),
              icon!,
            ],
          ],
        ),
      ),
    );
  }
}
