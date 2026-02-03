import 'package:flutter/material.dart';

import 'package:desktop_demo/shared/components/base_layout.dart';
import 'package:desktop_demo/shared/extentions/text.dart';

class PropertiesScreen extends StatelessWidget {
  const PropertiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(title: Text(
      "Properties Screen",
      style: context.appBarTitle,
    ),
      child: Center(
        child: Text(
          "properties Screen",
          style: context.titleLarge,
        ),
      ),
    );
  }
}
