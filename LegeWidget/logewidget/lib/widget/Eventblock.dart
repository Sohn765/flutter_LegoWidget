import 'package:flutter/material.dart';
import 'dart:math';

class Eventblock extends StatelessWidget {
  const Eventblock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipPath(
          clipper: const Clip1(pointList: []),
          child: Container(
            width: 100,
            height: 130,
            color: Colors.yellow,
          ),
        ),
        ClipPath(
          clipper: Clip2(),
          child: Container(
            width: 200,
            height: 130,
            color: Colors.yellow,
            child: const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                "프로그램이 시작할때",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Clip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var radius = 8.0; // 이 값을 변경하여 원하는 둥근 모서리 크기를 얻을 수 있습니다.

    path.moveTo(0, 30);
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(0, size.height - 40, radius, size.height - 40);
    path.lineTo(size.width - radius, size.height - 40);
    path.quadraticBezierTo(
        size.width, size.height - 40, size.width, size.height - 40 - radius);
    path.lineTo(size.width, radius + 30);
    path.quadraticBezierTo(size.width, 30, size.width - radius, 30);
    path.lineTo(radius, 30);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}

class Clip1 extends CustomClipper<Path> {
  final List pointList;

  const Clip1({
    required this.pointList,
  });

  @override
  Path getClip(Size size) {
    var path = Path();
    var radius = 4.0;
    var radius2 = 8.0;
    var bottom = size.height - 40;
    path.moveTo(0, 30);
    path.lineTo(0, bottom - radius2);
    path.quadraticBezierTo(0, bottom, radius2, bottom);
    path.lineTo(20 - radius, bottom); //
    path.quadraticBezierTo(20, bottom, 20 + (radius * cos(pi * 1 / 3)),
        bottom + radius * sin(pi * 1 / 3));
    path.lineTo(30 - radius * cos(pi * 1 / 3), size.height - 20 - radius);
    path.quadraticBezierTo(
        30, size.height - 20, 30 + (radius), size.height - 20);

    path.lineTo(60 - radius, size.height - 20);
    path.quadraticBezierTo(
        60,
        size.height - 20,
        60 + (radius * cos(pi * 1 / 3)),
        size.height - 20 - radius * sin(pi * 1 / 3));
    path.lineTo(70 - radius * cos(pi * 1 / 3), bottom + radius);
    path.quadraticBezierTo(70, bottom, 70 + radius, bottom);
    path.lineTo(size.width, bottom);
    path.lineTo(size.width, 30);
    path.quadraticBezierTo(50, 0, 0, 30);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
