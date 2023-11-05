import 'package:flutter/material.dart';
import 'package:logewidget/border/default/Textborder.dart';
import 'package:logewidget/border/default/defaultTopBorder.dart';
import 'package:logewidget/border/global/Shadow.dart';
import 'dart:math';

import 'package:logewidget/border/global/bottomBorder.dart';

class Defaultblock extends StatelessWidget {
  const Defaultblock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 100,
        ),
        Container(
          transform: Matrix4.translationValues(0, 0, 0),
          child: Row(
            children: [
              Stack(
                children: [
                  CustomPaint(
                    painter: ClipShadowShadowPainter(
                      clipper: Clip3(),
                      shadow: const Shadow(
                          blurRadius: 3,
                          offset: Offset(2, 13),
                          color: Colors.black54),
                    ),
                    child: Container(
                      transform: Matrix4.translationValues(0, 11, 0),
                      child: ClipPath(
                        clipper: Clip3(),
                        child: Container(
                          width: 80,
                          height: 50,
                          color: Colors.redAccent,
                          child: CustomPaint(painter: Cilpborder()),
                        ),
                      ),
                    ),
                  ),
                  ClipPath(
                    clipBehavior: Clip.antiAlias,
                    clipper: Clip1(),
                    child: Container(
                      width: 80,
                      height: 50,
                      color: Colors.redAccent,
                      child: CustomPaint(painter: DefaultTopBorder()),
                    ),
                  ),
                ],
              ),
              CustomPaint(
                painter: ClipShadowShadowPainter(
                  clipper: Clip2(),
                  shadow: const Shadow(
                      blurRadius: 3,
                      offset: Offset(2, 2),
                      color: Colors.black54),
                ),
                child: Container(
                  transform: Matrix4.translationValues(-1, 0.5, 0),
                  child: ClipPath(
                    clipper: Clip2(),
                    child: Container(
                      width: 200,
                      height: 51,
                      color: Colors.redAccent,
                      child: CustomPaint(
                        painter: Textborder(),
                        child: const Text(
                          "A모터",
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
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

class Clip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var radius = 4.0;
    var radius2 = 8.0;
    var bottom = size.height;

    path.lineTo(0, bottom - radius2);
    path.quadraticBezierTo(0, bottom, radius2, bottom);
    path.lineTo(20 - radius, bottom);
    //왼쪽아래

    path.lineTo(size.width, bottom);
    //오른쪽 아래
    path.lineTo(size.width, 0);
    //오른쪽 위

    //위쪽 육각형
    path.lineTo(70 + radius, 0);
    path.quadraticBezierTo(
        70, 0, 70 - (radius * cos(pi * 1 / 3)), 0 + radius * sin(pi * 1 / 3));
    path.lineTo(70 - (radius * cos(pi * 1 / 3)), 0 + radius * sin(pi * 1 / 3));
    path.quadraticBezierTo(60 + radius, 10, 60 - radius, 10);
    path.lineTo(30 + radius, 10);
    path.quadraticBezierTo(
        30 - radius, 10, 20 + radius * cos(pi * 1 / 3), 0 + radius);
    path.lineTo(20 + radius * cos(pi * 1 / 3), 0 + radius);
    path.quadraticBezierTo(20, 0, 20 - radius, 0);
    path.quadraticBezierTo(30, 0, 30 + radius2, 0);
    path.lineTo(radius2, 0);
    path.quadraticBezierTo(0, 0, 0, radius2);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Clip3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    var radius = 4.0;
    var radius2 = 8.0;
    var bottom = size.height - 10;

    path.moveTo(0, 30);
    path.lineTo(0, bottom - radius2);
    path.quadraticBezierTo(0, bottom, radius2, bottom);
    path.lineTo(20 - radius, bottom); //
    path.quadraticBezierTo(20, bottom, 20 + (radius * cos(pi * 1 / 3)),
        bottom + (radius * sin(pi * 1 / 3)));
    path.lineTo(
        20 + (radius * cos(pi * 1 / 3)), bottom + radius * (sin(pi * 1 / 3)));
    path.quadraticBezierTo(
        30 - radius, size.height, 30 + (radius), size.height);

    path.lineTo(60 - radius, size.height);
    path.quadraticBezierTo(60 + radius, size.height,
        70 - radius * (cos(pi * 1 / 3)), bottom + radius);
    path.lineTo(70 - (radius * cos(pi * 1 / 3)), bottom + radius);
    path.quadraticBezierTo(70, bottom, 70 + radius, bottom);
    path.lineTo(size.width, bottom);
    path.lineTo(size.width, 30);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}
