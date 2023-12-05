import 'package:flutter/material.dart';
import 'package:logewidget/border/Event/EnventTextborder.dart';
import 'package:logewidget/border/Event/EventTopBorder.dart';
import 'package:logewidget/border/global/Shadow.dart';
import 'package:logewidget/border/global/bottomBorder.dart';
import 'package:logewidget/component/Body/EventBody.dart';
import 'package:logewidget/component/Tail/EventTail.dart';

import 'package:logewidget/component/head/EventHead.dart';

class Eventblock extends StatefulWidget {
  const Eventblock({
    super.key,
  });

  @override
  State<Eventblock> createState() => _EventblockState();
}

class _EventblockState extends State<Eventblock> {
  double borderLineSize = 4;

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
                    clipper: EventTail(),
                    shadow: const Shadow(
                        blurRadius: 3,
                        offset: Offset(2, 42),
                        color: Colors.black54),
                  ),
                  child: Container(
                    transform: Matrix4.translationValues(0, 40, 0),
                    child: ClipPath(
                      clipper: EventTail(),
                      child: Container(
                        width: 80,
                        height: 50,
                        color: Colors.yellow,
                        child: CustomPaint(
                            painter: bottomBorder(
                                borderLineSize: borderLineSize,
                                startPointX: 0,
                                borderColor: Colors.black)),
                      ),
                    ),
                  ),
                ),
                ClipPath(
                  clipBehavior: Clip.antiAlias,
                  clipper: const EventHead(pointList: []),
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.yellow,
                    child: CustomPaint(
                        painter: EventTopBorder(
                            borderLineSize: borderLineSize,
                            borderColor: Colors.black)),
                  ),
                ),
              ],
            ),
            CustomPaint(
              painter: ClipShadowShadowPainter(
                clipper: EventBody(),
                shadow: const Shadow(
                  blurRadius: 3,
                  offset: Offset(4, 2),
                  color: Colors.black54,
                ),
              ),
              child: Container(
                transform: Matrix4.translationValues(-1, 0, 0),
                child: ClipPath(
                  clipper: EventBody(),
                  child: Container(
                    width: 200,
                    height: 80,
                    color: Colors.yellow,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: CustomPaint(
                          painter: EnventTextborder(
                              borderLineSize: borderLineSize,
                              borderColor: Colors.black),
                          child: const Text(
                            "프로그램이 시작할때",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )),
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
