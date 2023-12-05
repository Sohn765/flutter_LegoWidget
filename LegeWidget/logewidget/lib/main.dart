import 'package:flutter/material.dart';
import 'package:logewidget/widget/newdefaultblock.dart';

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
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(color: Colors.lightBlue.shade100),
        width: 500,
        height: 500,
        child: const Row(
          children: [
            SizedBox(
              width: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NewDefaultBlock(
                    color: Colors.lightBlue,
                    borderColor: Color.fromARGB(255, 0, 114, 167),
                    widgetList: [
                      Text("asdfasdfa"),
                      SizedBox(width: 30, height: 10),
                      Text("rrrrrr"),
                      Text("asdfasdfa"),
                      SizedBox(width: 30, height: 30),
                      Text("rrrrrr"),
                      Text("asdfasdfa"),
                      SizedBox(width: 30, height: 30),
                      Text("rrrrrr"),
                    ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
