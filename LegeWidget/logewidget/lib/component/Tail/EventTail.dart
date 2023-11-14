import 'dart:math';

import 'package:flutter/material.dart';

class EventTail extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    var radius = 4.0;
    var radius2 = 8.0;
    var bottom = size.height - 10;
    var depth = size.height;

    path.moveTo(0, 30);
    path.lineTo(0, bottom - radius2);
    path.quadraticBezierTo(0, bottom, radius2, bottom);

    path.lineTo(20 - radius, bottom); //
    path.arcToPoint(
        Offset(
          20 + radius * cos(pi * 1 / 3),
          bottom + radius * sin(pi * 1 / 3),
        ),
        radius: Radius.circular(radius * sqrt(2)),
        clockwise: true);
    path.lineTo(
      25 - radius * cos(pi * 1 / 3),
      depth - radius * sin(pi * 1 / 3),
    );
    path.arcToPoint(
        Offset(
          25 + radius,
          depth,
        ),
        radius: Radius.circular(radius * sqrt(2)),
        clockwise: false);

    path.lineTo(65 - radius, depth);

    path.arcToPoint(
        Offset(
          65 + radius * cos(pi * 1 / 3),
          depth - radius * sin(pi * 1 / 3),
        ),
        radius: Radius.circular(radius * sqrt(2)),
        clockwise: false);
    path.lineTo(
      70 - radius * cos(pi * 1 / 3),
      bottom + radius * sin(pi * 1 / 3),
    );
    path.arcToPoint(Offset(70 + radius, bottom),
        radius: Radius.circular(radius * sqrt(2)), clockwise: true);

    path.lineTo(size.width, bottom);
    path.lineTo(size.width, 30);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}
