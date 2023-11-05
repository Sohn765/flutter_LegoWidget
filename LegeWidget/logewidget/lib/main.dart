import 'package:flutter/material.dart';
import 'package:logewidget/widget/Eventblock.dart';
import 'package:logewidget/widget/defaultblock.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.lightBlue.shade100),
      width: 500,
      height: 500,
      child: const Column(
        children: [
          Eventblock(),
          SizedBox(
            height: 10,
          ),
          Defaultblock(),
          SizedBox(
            height: 10,
          ),
          Defaultblock(),
          SizedBox(
            height: 10,
          ),
          Defaultblock(),
          SizedBox(
            height: 10,
          ),
          Defaultblock(),
          SizedBox(
            height: 10,
          ),
          Defaultblock(),
        ],
      ),
    );
  }
}
