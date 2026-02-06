import 'package:desktop_demo/shared/error/error_wrapper.dart';
import 'package:desktop_demo/shared/loading/loading_wrapper.dart';
import 'package:flutter/material.dart';

import 'package:desktop_demo/shared/router/router.dart';
import 'package:desktop_demo/shared/theme/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  App({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ErrorCubit>(
          create: (_) => ErrorCubit(),
        ),
        BlocProvider<LoadingCubit>(
          create: (_) => LoadingCubit(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter.config(),
        title: 'Desktop Demo',
        theme: AppTheme.lightTheme,
        builder: (context, child) =>
          LoadingWrapper(
            child: ErrorWrapper(
              child: child,
            ),
          )
      ),
    );
  }
}
