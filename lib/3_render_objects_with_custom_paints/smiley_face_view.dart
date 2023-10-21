import 'package:flutter/material.dart';

import 'custom_painter.dart';

class SmileyFace extends StatelessWidget {
  const SmileyFace({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Smiley Face'),
        ),
        body: Center(
          child: CustomPaint(
            size: const Size(200, 200),
            painter: SmileyFacePainter(),
          ),
        ),
      );
}
