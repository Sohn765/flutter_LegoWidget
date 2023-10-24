import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _top = 0;
  double _left = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: _top,
          left: _left,
          child: GestureDetector(
              onTap: () => ('Tapeed!'),
              onPanUpdate: (details) => setState(
                    () {
                      _top += details.delta.dy;
                      _left += details.delta.dx;
                    },
                  ),
              child: const LegoWedget()),
        ),
      ],
    );
  }
}

class LegoWedget extends StatelessWidget {
  const LegoWedget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipPath(
          clipper: Clip1(),
          child: Container(
            width: 200,
            height: 100,
            color: Colors.redAccent,
          ),
        ),
        ClipPath(
          clipper: Clip2(),
          child: Container(
            width: 200,
            height: 100,
            color: Colors.redAccent,
            child: const Text(
              "A모터",
              style: TextStyle(color: Colors.black, fontSize: 30),
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

    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(0, size.height - 40, radius, size.height - 40);
    path.lineTo(size.width - radius, size.height - 40);
    path.quadraticBezierTo(
        size.width, size.height - 40, size.width, size.height - 40 - radius);
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
    path.lineTo(0, size.height - 40 - radius2);
    path.quadraticBezierTo(0, size.height - 40, radius2, size.height - 40);
    path.lineTo(20 - radius, size.height - 40); //
    path.quadraticBezierTo(
        20,
        size.height - 40,
        20 + (radius * cos(pi * 1 / 3)),
        size.height - 40 + radius * sin(pi * 1 / 3));
    path.lineTo(30 - radius * cos(pi * 1 / 3), size.height - 20 - radius);
    path.quadraticBezierTo(
        30, size.height - 20, 30 + (radius), size.height - 20);

    path.lineTo(60 - radius, size.height - 20);
    path.quadraticBezierTo(
        60,
        size.height - 20,
        60 + (radius * cos(pi * 1 / 3)),
        size.height - 20 - radius * sin(pi * 1 / 3));
    path.lineTo(70 - radius * cos(pi * 1 / 3), size.height - 40 + radius);
    path.quadraticBezierTo(70, size.height - 40, 70 + radius, size.height - 40);
    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0);
    path.lineTo(70 + radius, 0);
    path.quadraticBezierTo(
        70, 0, 70 - (radius * cos(pi * 1 / 3)), 0 + radius * sin(pi * 1 / 3));
    path.lineTo(60 + radius * cos(pi * 1 / 3), 20 - radius);
    path.quadraticBezierTo(60, 20, 60 - radius, 20);
    path.lineTo(30 + radius, 20);
    path.quadraticBezierTo(
        30, 20, 30 - (radius * cos(pi * 1 / 3)), 20 - radius * sin(pi * 1 / 3));
    path.lineTo(20 + radius * cos(pi * 1 / 3), 0 + radius);
    path.quadraticBezierTo(20, 0, 20 - radius2, 0);
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
