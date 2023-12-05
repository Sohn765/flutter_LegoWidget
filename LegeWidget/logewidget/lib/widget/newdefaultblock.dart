import 'package:flutter/material.dart';
import 'package:logewidget/border/NewDafult/NewDafultTailborder.dart';
import 'package:logewidget/border/NewDafult/NewDafultbackGroundborder.dart';
import 'package:logewidget/border/NewDafult/NewDafultborder.dart';
import 'package:logewidget/component/Tail/DefaultTail.dart';
import 'package:logewidget/component/NewDefaultBlockPath.dart';

class NewDefaultBlock extends StatefulWidget {
  final Color color;
  final Color borderColor;
  final List<Widget> widgetList;

  const NewDefaultBlock({
    super.key,
    required this.color,
    required this.borderColor,
    required this.widgetList,
  });

  @override
  State<NewDefaultBlock> createState() => _NewDefaultBlock();
}

class _NewDefaultBlock extends State<NewDefaultBlock> {
  double borderLineSize = 4;
  double sizewidth = 190.7;

  @override
  Widget build(BuildContext context) {
    // tail.translationValues();
    return Material(
      color: Colors.transparent,
      child: Transform.scale(
        scale: 1.04,
        child: Container(
          transform: Matrix4.translationValues(0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: widget.color,
                    borderRadius: const BorderRadius.all(Radius.circular(8.0))),

                // color: widget.color,
                child: CustomPaint(
                  painter: NewDafultBackGroundborder(
                      borderLineSize: 2, borderColor: widget.borderColor),
                  child: Transform.translate(
                    offset: const Offset(0, -10),
                    child: ClipPath(
                      clipper: NewDefaultBlockPath(),
                      child: Container(
                        constraints:
                            const BoxConstraints(minHeight: 30, minWidth: 200),
                        color: widget.color,
                        child: CustomPaint(
                          painter: NewDafultborder(
                              borderColor: widget.borderColor,
                              borderLineSize: 4),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 12, left: 8, right: 8),
                            child: Row(
                              children: widget.widgetList,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  DefaultTail(
                    dx: 0,
                    dy: -0.6,
                    color: widget.color,
                    borderColor: widget.borderColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DefaultTail extends StatefulWidget {
  const DefaultTail({
    super.key,
    required this.dx,
    required this.dy,
    required this.color,
    required this.borderColor,
  });

  final double dx;
  final double dy;
  final Color color;
  final Color borderColor;

  @override
  State<DefaultTail> createState() => _DefaultTailState();
}

class _DefaultTailState extends State<DefaultTail> {
  late var translationValues =
      Matrix4.translationValues(widget.dx, widget.dy, 0);

  void translation(double dx, double dy, double dz) {
    translationValues = Matrix4.translationValues(dx, dy, dz);
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.1,
      child: Container(
        transform: translationValues,
        child: ClipPath(
          clipper: DefaultTailPath(),
          child: Container(
              width: 80,
              height: 12,
              color: widget.color,
              child: CustomPaint(
                painter: NewDafultTailborder(
                  borderColor: widget.borderColor,
                  borderLineSize: 3.5,
                ),
              )),
        ),
      ),
    );
  }
}
