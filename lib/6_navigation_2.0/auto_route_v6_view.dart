import 'package:flutter/material.dart';

import 'compass_configs.dart';

class AutoRouteV6View extends StatelessWidget {
  final _compass = Compass();

  AutoRouteV6View({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _compass.config(),
    );
  }
}
