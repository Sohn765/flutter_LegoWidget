import 'package:flutter/material.dart';

class EventTopBorder extends CustomPainter {
  final double borderLineSize;
  final Color borderColor;

  const EventTopBorder({
    required this.borderLineSize,
    required this.borderColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var bottom = size.height;
    final paint = Paint()
      ..strokeWidth = borderLineSize
      ..color = borderColor;

    var path = Path();

    path.moveTo(size.width, 0);
    path.lineTo(size.width, 30);
    path.quadraticBezierTo(size.width / 2, 0, 0, 30);
    path.lineTo(0, bottom);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
