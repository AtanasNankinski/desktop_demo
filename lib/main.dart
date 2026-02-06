import 'package:flutter/material.dart';

import 'package:window_manager/window_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:desktop_demo/shared/utils/constants.dart';
import 'package:desktop_demo/app_observer.dart';
import 'package:desktop_demo/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = AppObserver();

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

  runApp(App());
}
