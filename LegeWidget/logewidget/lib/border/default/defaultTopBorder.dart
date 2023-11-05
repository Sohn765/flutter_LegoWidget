import 'package:flutter/material.dart';
import 'dart:math';

class DefaultTopBorder extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var radius = 4.0;
    var radius2 = 8.0;
    var bottom = size.height;
    final paint = Paint()
      ..strokeWidth = 1
      ..color = Colors.black;

    final path = Path()
      ..moveTo(size.width, 0)
      ..quadraticBezierTo(
          70, 0, 70 - (radius * cos(pi * 1 / 3)), 0 + radius * sin(pi * 1 / 3))
      ..lineTo(70 - (radius * cos(pi * 1 / 3)), 0 + radius * sin(pi * 1 / 3))
      ..quadraticBezierTo(60 + radius, 10, 60 - radius, 10)
      ..lineTo(30 + radius, 10)
      ..quadraticBezierTo(
          30 - radius, 10, 20 + radius * cos(pi * 1 / 3), 0 + radius)
      ..lineTo(20 + radius * cos(pi * 1 / 3), 0 + radius)
      ..quadraticBezierTo(20, 0, 20 - radius, 0)
      ..quadraticBezierTo(30, 0, 30 + radius2, 0)
      ..lineTo(radius2, 0)
      ..quadraticBezierTo(0, 0, 0, radius2)
      ..lineTo(0, bottom);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
