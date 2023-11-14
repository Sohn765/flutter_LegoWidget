import 'package:flutter/material.dart';

class EnventTextborder extends CustomPainter {
  final double borderLineSize;
  final Color borderColor;

  const EnventTextborder({
    required this.borderLineSize,
    required this.borderColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 8.0;
    var bottom = size.height;
    final paint = Paint()
      ..strokeWidth = borderLineSize
      ..color = borderColor;

    var path = Path();

    path.moveTo(0, bottom);
    path.lineTo(size.width - radius, bottom);
    path.quadraticBezierTo(size.width, bottom, size.width, bottom - radius);
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(size.width, -10, size.width - radius, -10);
    path.lineTo(0, -10);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
