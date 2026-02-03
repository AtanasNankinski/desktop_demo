// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:desktop_demo/presentation/feature/data_screen/data_page.dart'
    as _i1;
import 'package:desktop_demo/presentation/feature/home/home_page.dart' as _i2;
import 'package:desktop_demo/presentation/feature/properties/properties_page.dart'
    as _i3;

/// generated route for
/// [_i1.DataPage]
class DataRoute extends _i4.PageRouteInfo<void> {
  const DataRoute({List<_i4.PageRouteInfo>? children})
    : super(DataRoute.name, initialChildren: children);

  static const String name = 'DataRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.DataPage();
    },
  );
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.PropertiesPage]
class PropertiesRoute extends _i4.PageRouteInfo<void> {
  const PropertiesRoute({List<_i4.PageRouteInfo>? children})
    : super(PropertiesRoute.name, initialChildren: children);

  static const String name = 'PropertiesRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.PropertiesPage();
    },
  );
}
