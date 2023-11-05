import 'package:flutter/material.dart';
import 'dart:math';

class Cilpborder extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var radius = 4.0;
    var radius2 = 8.0;
    var bottom = size.height - 10;
    final paint = Paint()
      ..strokeWidth = 1
      ..color = Colors.black;

    final path = Path()
      ..moveTo(0, 30)
      ..lineTo(0, bottom - radius2)
      ..quadraticBezierTo(0, bottom, radius2, bottom)
      ..lineTo(20 - radius, bottom)
      ..quadraticBezierTo(20, bottom, 20 + (radius * cos(pi * 1 / 3)),
          bottom + (radius * sin(pi * 1 / 3)))
      ..lineTo(
          20 + (radius * cos(pi * 1 / 3)), bottom + radius * (sin(pi * 1 / 3)))
      ..quadraticBezierTo(30 - radius, size.height, 30 + (radius), size.height)
      ..lineTo(60 - radius, size.height)
      ..quadraticBezierTo(60 + radius, size.height,
          70 - radius * (cos(pi * 1 / 3)), bottom + radius)
      ..lineTo(70 - (radius * cos(pi * 1 / 3)), bottom + radius)
      ..quadraticBezierTo(70, bottom, 70 + radius, bottom)
      ..lineTo(size.width, bottom);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
