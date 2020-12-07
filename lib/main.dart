import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key key }) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color color = Color.fromARGB(0, 0, 0, 0); // initialize start colour
  bool _didInitState = false;

  @override
  void initState() {
    super.initState();
    _didInitState = true;
  }

  ///Function which generate and return random Colour
  Color generateRandomColour() {
    Random random = new Random();
    return Color.fromARGB(random.nextInt(256), random.nextInt(256),
        random.nextInt(256), random.nextInt(256));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: new GestureDetector(
          onTap: () {
            setState(() {
              color = generateRandomColour();
            });
          },
          child: Container(
            color: color,
            child: new Text(
              "Hey there",
              style: TextStyle(fontSize: 15.0),
            ),
            alignment: Alignment(0.0, 0.0),
          ),
        ),
      ),
    );
  }
}
