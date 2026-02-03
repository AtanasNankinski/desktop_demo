import 'package:desktop_demo/presentation/feature/home/home_page.dart';
import 'package:desktop_demo/shared/router/router.dart';
import 'package:flutter/material.dart';

import 'package:window_manager/window_manager.dart';

import 'package:desktop_demo/shared/theme/theme.dart';
import 'package:desktop_demo/shared/utils/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = WindowOptions(
    size: Size(WINDOW_WIDTH, WINDOW_HEIGHT),
    maximumSize: Size(WINDOW_WIDTH, WINDOW_HEIGHT),
    minimumSize: Size(WINDOW_WIDTH, WINDOW_HEIGHT),
    fullScreen: false,
    center: true,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.normal,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();

    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      title: 'Desktop Demo',
      theme: AppTheme.lightTheme,
    );
  }
}
