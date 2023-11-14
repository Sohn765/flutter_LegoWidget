import 'package:flutter/material.dart';

class Newdefaultblock extends StatefulWidget {
  const Newdefaultblock({
    super.key,
  });

  @override
  State<Newdefaultblock> createState() => _Newdefaultblock();
}

class _Newdefaultblock extends State<Newdefaultblock> {
  double borderLineSize = 4;
  double sizewidth = 190.7;
  Color borderColor = const Color.fromARGB(255, 97, 27, 27);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 15,
                color: Colors.amberAccent,
              ),
              Container(
                transform: Matrix4.translationValues(-0.3, 0, 0),
                width: sizewidth - 93.7,
                height: 15,
                color: Colors.redAccent,
              ),
              Container(
                width: 15,
                height: 15,
                color: Colors.black,
              ),
            ],
          ),
          Container(
            transform: Matrix4.translationValues(-0.3, -0.3, 0),
            width: sizewidth,
            height: 30,
            color: Colors.redAccent,
            // child: const Text("adf"),
          ),
          Row(
            children: [
              Container(
                width: 80,
                height: 5,
                color: Colors.amberAccent,
              ),
              Container(
                width: sizewidth - 90.7,
                height: 5,
                color: Colors.redAccent,
              ),
              Container(
                width: 12,
                height: 5,
                color: Colors.black,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Edge1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var radius2 = 8.0;
    var bottom = size.height;

    path.lineTo(0, bottom);
    path.lineTo(size.width, bottom);
    // path.moveTo(size.width, 0);
    path.lineTo(size.width, radius2);

    path.quadraticBezierTo(size.width, 0, 0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Edge2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var radius2 = 8.0;
    var bottom = size.height;

    path.lineTo(0, bottom);
    path.lineTo(radius2, bottom);
    path.quadraticBezierTo(size.width, bottom, size.width, 0);
    path.lineTo(size.width, bottom);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
