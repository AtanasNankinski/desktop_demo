import 'package:auto_route/auto_route.dart';

import 'package:desktop_demo/shared/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: Routes.home, page: HomeRoute.page, initial: true,),
    AutoRoute(path: Routes.dataPage, page: DataRoute.page,),
    AutoRoute(path: Routes.properties, page: PropertiesRoute.page,),
  ];
}

class Routes {
  static String home= "/";
  static String dataPage = "/data_page";
  static String properties = "/properties";
}