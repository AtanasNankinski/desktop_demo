import 'package:flutter/material.dart';

import 'package:desktop_demo/shared/components/base_layout.dart';
import 'package:desktop_demo/shared/extentions/text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      title: Text(
        "Home Screen",
        style: context.appBarTitle,
      ),
      child: Center(
        child: Text(
          "Home Screen",
          style: context.titleLarge,
        ),
      ),
    );
  }
}
