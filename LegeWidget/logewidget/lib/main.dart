import 'package:flutter/material.dart';
import 'package:logewidget/widget/Eventblock.dart';

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
            child: const Eventblock(),
          ),
        ),
      ],
    );
  }
}
