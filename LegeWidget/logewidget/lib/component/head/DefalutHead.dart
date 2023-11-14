import 'package:flutter/material.dart';
import 'dart:math';

class DefaultHeader extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var radius = 4.0;
    var radius2 = 8.0;
    var arcRadius = radius * sqrt(3);
    var bottom = size.height;
    var depth = 5 * sqrt(3);

    path.lineTo(0, bottom);
    path.lineTo(20 - radius, bottom);
    //왼쪽아래

    path.lineTo(size.width, bottom);
    //오른쪽 아래
    path.lineTo(size.width, 0);
    //오른쪽 위

    //위쪽 육각형
    path.lineTo(69 + radius, 0);
    path.arcToPoint(
        Offset(69 - radius * cos(pi * 1 / 3), 0 + radius * sin(pi * 1 / 3)),
        radius: Radius.circular(arcRadius),
        clockwise: false);
    path.lineTo(
        64 + (radius * cos(pi * 1 / 3)), depth - radius * sin(pi * 1 / 3));
    path.arcToPoint(Offset(64 - radius, depth),
        radius: Radius.circular(arcRadius), clockwise: true);

    path.lineTo(26 + radius, depth);

    path.arcToPoint(
        Offset(26 - radius * cos(pi * 1 / 3), depth - radius * sin(pi * 1 / 3)),
        radius: Radius.circular(arcRadius),
        clockwise: true);
    path.lineTo(21 + radius * cos(pi * 1 / 3), 0 + radius * sin(pi * 1 / 3));
    path.arcToPoint(Offset(21 - radius, 0),
        radius: Radius.circular(arcRadius), clockwise: false);

    //위쪽 육각형 끝
    path.lineTo(radius2, 0);
    path.quadraticBezierTo(0, 0, 0, radius2);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
