import 'package:desktop_demo/shared/error/error_wrapper.dart';
import 'package:desktop_demo/shared/loading/loading_wrapper.dart';
import 'package:flutter/material.dart';

import 'package:desktop_demo/shared/router/router.dart';
import 'package:desktop_demo/shared/theme/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();

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
        routerConfig: _appRouter.config(),
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
