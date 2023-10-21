import 'package:aqary_assessment/6_navigation_2.0/property_details_screen.dart';
import 'package:aqary_assessment/6_navigation_2.0/property_screen.dart';
import 'package:auto_route/auto_route.dart';

part 'compass_configs.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class Compass extends _$Compass {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: PropertyRoute.page),
        AutoRoute(page: PropertyDetailsRoute.page),
      ];
}
