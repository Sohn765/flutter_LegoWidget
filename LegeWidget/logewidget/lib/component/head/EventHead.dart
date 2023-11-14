import 'package:flutter/material.dart';

class EventHead extends CustomClipper<Path> {
  final List pointList;

  const EventHead({
    required this.pointList,
  });

  @override
  Path getClip(Size size) {
    var path = Path();
    var bottom = size.height - 7;

    path.moveTo(0, 30);
    path.lineTo(0, bottom);
    path.lineTo(size.width, bottom);
    path.lineTo(size.width, 30);
    path.quadraticBezierTo(size.width / 2, 0, 0, 30);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
