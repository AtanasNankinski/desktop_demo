import 'package:desktop_demo/data/repository/data_repository.dart';
import 'package:desktop_demo/domain/repository/data_repository.dart';
import 'package:desktop_demo/presentation/feature/data_screen/state/data_cubit.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/annotations.dart';

import 'package:desktop_demo/presentation/feature/data_screen/data_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class DataPage extends StatelessWidget {
  const DataPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DataRepository dataRepository = DataRepositoryImpl();

    return BlocProvider(
      create: (_) => DataCubit(dataRepository),
      child: DataScreen(),
    );
  }
}