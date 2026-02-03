import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:desktop_demo/shared/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: Routes.home.path, page: HomeRoute.page, initial: true,),
    AutoRoute(path: Routes.dataPage.path, page: DataRoute.page,),
    AutoRoute(path: Routes.properties.path, page: PropertiesRoute.page,),
  ];
}

enum Routes {
  home("/", HomeRoute()),
  dataPage("/data_page", DataRoute()),
  properties("/properties", PropertiesRoute());

  final String path;
  final PageRouteInfo route;

  const Routes(this.path, this.route);

  Future<T?> push<T>(BuildContext context) => context.router.push(route);

  Future<T?> replace<T>(BuildContext context) => context.router.replace(route);

  Future<void> replaceAll<T>(BuildContext context) => context.router.replaceAll([route]);
}