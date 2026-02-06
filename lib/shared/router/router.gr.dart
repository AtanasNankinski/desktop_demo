// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:desktop_demo/data/model/example_data.dart' as _i5;
import 'package:desktop_demo/presentation/feature/data_screen/data_page.dart'
    as _i1;
import 'package:desktop_demo/presentation/feature/home/home_page.dart' as _i2;
import 'package:desktop_demo/presentation/feature/properties/properties_page.dart'
    as _i3;
import 'package:flutter/material.dart' as _i6;

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
class PropertiesRoute extends _i4.PageRouteInfo<PropertiesRouteArgs> {
  PropertiesRoute({
    required _i5.ExampleData data,
    _i6.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         PropertiesRoute.name,
         args: PropertiesRouteArgs(data: data, key: key),
         initialChildren: children,
       );

  static const String name = 'PropertiesRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PropertiesRouteArgs>();
      return _i3.PropertiesPage(data: args.data, key: args.key);
    },
  );
}

class PropertiesRouteArgs {
  const PropertiesRouteArgs({required this.data, this.key});

  final _i5.ExampleData data;

  final _i6.Key? key;

  @override
  String toString() {
    return 'PropertiesRouteArgs{data: $data, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PropertiesRouteArgs) return false;
    return data == other.data && key == other.key;
  }

  @override
  int get hashCode => data.hashCode ^ key.hashCode;
}
