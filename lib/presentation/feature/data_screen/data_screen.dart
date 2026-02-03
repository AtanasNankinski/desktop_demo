import 'package:flutter/material.dart';

import 'package:desktop_demo/shared/components/base_layout.dart';
import 'package:desktop_demo/shared/extentions/text.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(title: Text(
        "Data Screen",
        style: context.appBarTitle,
      ),
      child: Center(
        child: Text(
          "Data Screen",
          style: context.titleLarge,
        ),
      ),
    );
  }
}
