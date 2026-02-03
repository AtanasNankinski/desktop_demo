import 'package:desktop_demo/data/repository/testing_repository.dart';
import 'package:desktop_demo/domain/repository/testing_repository.dart';
import 'package:desktop_demo/presentation/feature/home/state/home_cubit.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:desktop_demo/presentation/feature/home/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TestingRepository testingRepository = TestingRepositoryImpl();

    return BlocProvider(
      create: (_) => HomeCubit(testingRepository),
      child: HomeScreen(),
    );
  }
}
