import 'package:flutter/material.dart';

import 'package:auto_route/annotations.dart';

import 'package:desktop_demo/presentation/feature/data_screen/data_screen.dart';

@RoutePage()
class DataPage extends StatelessWidget {
  const DataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DataScreen();
  }
}