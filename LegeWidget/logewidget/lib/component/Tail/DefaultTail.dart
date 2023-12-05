import 'dart:math';

import 'package:flutter/material.dart';

class DefaultTailPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    var radius = 4.0;
    // var radius2 = 8.0;
    var arcRadius = radius * sqrt(3);
    var bottom = size.height - 10;
    var depth = 5 * sqrt(3);

    path.moveTo(10, 0);
    // path.quadraticBezierTo(10, bottom, radius2, bottom);

    //육각형 시작
    path.lineTo(20 - radius, bottom);
    path.arcToPoint(
        Offset(
            20 + radius * cos(pi * 1 / 3), bottom + radius * sin(pi * 1 / 3)),
        radius: Radius.circular(arcRadius),
        clockwise: true);
    path.lineTo(25 - radius * cos(pi * 1 / 3),
        bottom + depth - radius * sin(pi * 1 / 3));

    path.arcToPoint(Offset(25 + radius, bottom + depth),
        radius: Radius.circular(arcRadius), clockwise: false);

    path.lineTo(55 - radius, bottom + depth);

    path.arcToPoint(
        Offset(55 + radius * cos(pi * 1 / 3),
            bottom + depth - radius * sin(pi * 1 / 3)),
        radius: Radius.circular(arcRadius),
        clockwise: false);
    path.lineTo(
        60 - radius * cos(pi * 1 / 3), bottom + radius * sin(pi * 1 / 3));
    path.arcToPoint(Offset(60 + radius, bottom),
        radius: Radius.circular(arcRadius), clockwise: true);

    //육각형 끝
    path.lineTo(size.width, bottom);
    path.lineTo(size.width, 0);

    // path.lineTo(0, bottom - radius2);
    // path.quadraticBezierTo(0, bottom, radius2, bottom);
    // path.lineTo(size.width - radius2, bottom);

    // path.quadraticBezierTo(size.width, bottom, size.width, bottom - radius2);
    // path.lineTo(size.width, radius2);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}

class DefaultTailShadowPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    var radius = 4.0;
    // var radius2 = 8.0;
    var arcRadius = radius * sqrt(3);
    var bottom = size.height - 10;
    var depth = 5 * sqrt(3);

    // path.moveTo(0.3, 0);
    // path.lineTo(0.3, bottom - radius2);
    // path.quadraticBezierTo(0, bottom, radius2, bottom);

    //육각형 시작
    path.moveTo(20 - radius, bottom);
    path.arcToPoint(
        Offset(
            20 + radius * cos(pi * 1 / 3), bottom + radius * sin(pi * 1 / 3)),
        radius: Radius.circular(arcRadius),
        clockwise: true);
    path.lineTo(25 - radius * cos(pi * 1 / 3),
        bottom + depth - radius * sin(pi * 1 / 3));

    path.arcToPoint(Offset(25 + radius, bottom + depth),
        radius: Radius.circular(arcRadius), clockwise: false);

    path.lineTo(65 - radius, bottom + depth);

    path.arcToPoint(
        Offset(65 + radius * cos(pi * 1 / 3),
            bottom + depth - radius * sin(pi * 1 / 3)),
        radius: Radius.circular(arcRadius),
        clockwise: false);
    path.lineTo(
        70 - radius * cos(pi * 1 / 3), bottom + radius * sin(pi * 1 / 3));
    path.arcToPoint(Offset(70 + radius, bottom),
        radius: Radius.circular(arcRadius), clockwise: true);

    // //육각형 끝
    // path.lineTo(size.width, bottom);
    // path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}
