import 'package:flutter/material.dart';

class EventTopBorder extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var bottom = size.height;
    final paint = Paint()
      ..strokeWidth = 1
      ..color = Colors.black;

    var path = Path();

    path.moveTo(size.width, 0);
    path.lineTo(size.width, 30);
    path.quadraticBezierTo(50, 0, 0, 30);
    path.lineTo(0, bottom);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
