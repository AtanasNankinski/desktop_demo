import 'package:flutter/material.dart';

import 'package:auto_route/annotations.dart';

import 'package:desktop_demo/presentation/feature/properties/properties_screen.dart';

@RoutePage()
class PropertiesPage extends StatelessWidget {
  const PropertiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertiesScreen();
  }
}
