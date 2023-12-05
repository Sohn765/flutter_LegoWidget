import 'package:flutter/material.dart';
import 'package:logewidget/border/default/Textborder.dart';
import 'package:logewidget/border/default/defaultTopBorder.dart';
import 'package:logewidget/border/global/bottomBorder.dart';
import 'package:logewidget/component/Body/DefalutBody.dart';
import 'package:logewidget/component/Tail/DefaultTail.dart';
import 'package:logewidget/border/global/Shadow.dart';
import 'package:logewidget/component/head/DefalutHead.dart';

class Defaultblock extends StatefulWidget {
  const Defaultblock({
    super.key,
  });

  @override
  State<Defaultblock> createState() => _DefaultblockState();
}

class _DefaultblockState extends State<Defaultblock> {
  double borderLineSize = 4;
  Color borderColor = const Color.fromARGB(255, 97, 27, 27);

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.04,
      child: Container(
        transform: Matrix4.translationValues(0, 0, 0),
        child: Row(
          children: [
            Stack(
              children: [
                CustomPaint(
                  painter: ClipShadowShadowPainter(
                    clipper: DefaultTailPath(),
                    shadow: const Shadow(
                        blurRadius: 3,
                        offset: Offset(2, 12),
                        color: Colors.black54),
                  ),
                  child: Container(
                    transform: Matrix4.translationValues(-0.3, 11, 0),
                    child: ClipPath(
                      clipper: DefaultTailPath(),
                      child: Container(
                        width: 80,
                        height: 50,
                        color: Colors.redAccent,
                        child: CustomPaint(
                            painter: bottomBorder(
                          borderLineSize: borderLineSize,
                          startPointX: 0.3,
                          borderColor: borderColor,
                        )),
                      ),
                    ),
                  ),
                ),
                ClipPath(
                  clipBehavior: Clip.antiAlias,
                  clipper: DefaultHeader(),
                  child: Container(
                    width: 80,
                    height: 50,
                    color: Colors.redAccent,
                    child: CustomPaint(
                        painter: DefaultTopBorder(
                            borderLineSize: borderLineSize,
                            borderColor: borderColor),
                        child: const Text("asdkfja")),
                  ),
                ),
              ],
            ),
            CustomPaint(
              painter: ClipShadowShadowPainter(
                clipper: DefalutBody(),
                shadow: const Shadow(
                  blurRadius: 3,
                  offset: Offset(4, 2),
                  color: Colors.black54,
                ),
              ),
              child: Container(
                transform: Matrix4.translationValues(-1, 0.5, 0),
                child: ClipPath(
                  clipper: DefalutBody(),
                  child: Container(
                    width: 200,
                    height: 51,
                    color: Colors.redAccent,
                    child: CustomPaint(
                      painter: Textborder(
                          borderLineSize: borderLineSize,
                          borderColor: borderColor),
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
    );
  }
}
