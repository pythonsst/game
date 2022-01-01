
import 'package:flutter/material.dart';

class MyShapePainter extends CustomPainter {
  final bool isCircle;
  final bool isUndo;
  final int randomHeight;
  final int randomWidth;
  final Rect rect;
  final Offset center;
  final Paint paintCustom;

  MyShapePainter(
      {required this.isCircle,
      required this.paintCustom,
      required this.rect,
      required this.center,
      required this.isUndo,
      required this.randomHeight,
      required this.randomWidth});

  @override
  void paint(Canvas canvas, Size size) {
    //canvas.saveLayer(null, Paint()..blendMode = BlendMode.multiply);
    // Saves the whole canvas.
    
    isUndo
        ? (canvas.getSaveCount()> 0 ) ? {canvas.restore()}:canvas.save()
        : isCircle
            ? {
                canvas.drawCircle(
                  center,
                  size.width * 1 / 16,
                  paintCustom,
                ),
              }
            : canvas.drawRect(rect, paintCustom);

   // canvas.saveLayer(rect,paintCustom);
    //canvas.getSaveCount();
    debugPrint("SaveCount ${canvas.getSaveCount()}");
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
