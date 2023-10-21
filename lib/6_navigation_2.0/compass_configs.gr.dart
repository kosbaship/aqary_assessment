// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'compass_configs.dart';

abstract class _$Compass extends RootStackRouter {
  // ignore: unused_element
  _$Compass({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    PropertyDetailsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PropertyDetailsScreen(),
      );
    },
    PropertyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PropertyScreen(),
      );
    },
  };
}

/// generated route for
/// [PropertyDetailsScreen]
class PropertyDetailsRoute extends PageRouteInfo<void> {
  const PropertyDetailsRoute({List<PageRouteInfo>? children})
      : super(
          PropertyDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PropertyDetailsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PropertyScreen]
class PropertyRoute extends PageRouteInfo<void> {
  const PropertyRoute({List<PageRouteInfo>? children})
      : super(
          PropertyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PropertyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
