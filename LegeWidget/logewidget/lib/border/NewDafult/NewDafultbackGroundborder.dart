import 'package:flutter/material.dart';

class NewDafultBackGroundborder extends CustomPainter {
  final double borderLineSize;
  final Color borderColor;

  const NewDafultBackGroundborder({
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
    // path.moveTo(1, 0);
    // path.lineTo(1, bottom - radius);
    // path.quadraticBezierTo(1, bottom, radius, bottom);
    // path.lineTo((size.width - 1) - radius, bottom);
    // path.quadraticBezierTo(size.width, bottom, size.width - 1, bottom - radius);
    // path.lineTo(size.width - 1, radius);
    // path.quadraticBezierTo(size.width - 1, 0, size.width - radius, 0);

    path.moveTo(70, bottom);
    path.lineTo((size.width - 1) - radius, bottom);
    path.quadraticBezierTo(size.width, bottom, size.width - 1, bottom - radius);
    path.lineTo(size.width - 1, 0);
    path.moveTo(1, 0);
    path.lineTo(1, bottom - radius);
    path.quadraticBezierTo(1, bottom, radius, bottom);
    path.lineTo(20, bottom);

    // path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
