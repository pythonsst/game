import 'dart:math';

import 'package:flutter/material.dart';

class MyShapePainter extends CustomPainter {
  final bool isCircle;

  MyShapePainter({required this.isCircle});

  @override
  void paint(Canvas canvas, Size size) {
    Random random = Random();
    int randomHeight = random.nextInt(size.height.toInt());
    int randomWidth = random.nextInt(size.width.toInt());

    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final a = Offset(randomWidth.toDouble(), randomHeight.toDouble() + 30);
    final b = Offset(randomWidth.toDouble() + 40, randomHeight.toDouble());
    final center = Offset(randomWidth.toDouble(), randomHeight.toDouble());

    final rect = Rect.fromPoints(a, b);
    canvas.saveLayer(Rect.largest, Paint());
    canvas.restore();

    isCircle
        ? canvas.drawCircle(
            center,
            size.width * 1 / 16,
            paint,
          )
        : canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
