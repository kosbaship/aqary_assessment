import 'dart:math';

import 'package:flutter/material.dart';

class SmileyFacePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.fill;

    // Draw a yellow circle as the face
    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.width / 2, paint);

    // Draw the eyes (two black circles)
    paint.color = Colors.black;
    final eyeRadius = size.width * 0.1;
    canvas.drawCircle(
      Offset(size.width * 0.35, size.height * 0.35),
      eyeRadius,
      paint,
    );
    canvas.drawCircle(
      Offset(size.width * 0.65, size.height * 0.35),
      eyeRadius,
      paint,
    );

    // Draw the smile (a semi-circle)
    paint.color = Colors.black;
    final smileRadius = size.width * 0.2;
    final center = Offset(size.width / 2, size.height * 0.6);
    const startAngle = -pi / 4;
    const sweepAngle = pi / 2;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: smileRadius),
      startAngle,
      sweepAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
