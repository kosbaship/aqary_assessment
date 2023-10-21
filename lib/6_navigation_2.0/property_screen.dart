import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'compass_configs.dart';

@RoutePage()
class PropertyScreen extends StatelessWidget {
  const PropertyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Property List'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.router.navigate(
            const PropertyDetailsRoute(),
          ),
          child: const Text('View Property Details'),
        ),
      ),
    );
  }
}
