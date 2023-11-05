import 'package:flutter/material.dart';

class Textborder extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var radius = 8.0;
    var bottom = size.height;
    final paint = Paint()
      ..strokeWidth = 1
      ..color = Colors.black;

    var path = Path();

    path.moveTo(0, bottom);
    path.lineTo(size.width - radius, bottom);
    path.quadraticBezierTo(size.width, bottom, size.width, bottom - radius);
    path.lineTo(size.width, radius);
    path.quadraticBezierTo(size.width, 0, size.width - radius, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
