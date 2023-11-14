import 'package:flutter/material.dart';

class DefalutBody extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var radius = 8.0; // 이 값을 변경하여 원하는 둥근 모서리 크기를 얻을 수 있습니다.
    var bottom = size.height;

    path.lineTo(0, bottom);
    path.quadraticBezierTo(0, bottom, radius, bottom);
    path.lineTo(size.width - radius, bottom);
    path.quadraticBezierTo(size.width, bottom, size.width, bottom - radius);
    path.lineTo(size.width, radius);
    path.quadraticBezierTo(size.width, 0, size.width - radius, 0);
    path.lineTo(radius, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}
