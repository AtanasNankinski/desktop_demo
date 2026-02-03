import 'package:flutter/material.dart';

import 'package:desktop_demo/shared/components/base_layout.dart';
import 'package:desktop_demo/shared/extentions/text.dart';
import 'package:desktop_demo/shared/router/router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      title: Text(
        "Home Screen",
        style: context.appBarTitle,
      ),
      child: Column(
        children: [
          Spacer(),
          Text(
            "Home Screen",
            style: context.titleLarge,
          ),
          ElevatedButton(
            onPressed: (){
              Routes.dataPage.replace(context);
            },
            child: Text("Data Screen"),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
