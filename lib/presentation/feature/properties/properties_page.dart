import 'package:flutter/material.dart';

import 'package:auto_route/annotations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:desktop_demo/presentation/feature/properties/properties_screen.dart';
import 'package:desktop_demo/data/model/example_data.dart';
import 'package:desktop_demo/presentation/feature/properties/properties_state/properties_cubit.dart';

@RoutePage()
class PropertiesPage extends StatelessWidget {
  final ExampleData data;

  const PropertiesPage({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PropertiesCubit(data),
      child: PropertiesScreen(),
    );
  }
}
