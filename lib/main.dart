import 'package:flutter/material.dart';
import 'dart:math' as math;


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solid Software Test Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color bgColor = Colors.blue;

  void randomColor() {//Background color randomizer
    setState(() {
      bgColor = Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
          .withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        randomColor();
      },
      child: Scaffold(
        body: Container(
          color: bgColor,
          alignment: Alignment.center,
          child: Stack(
            children: <Widget>[

              // Stroke text
              Text(
                'Hey there!',
                style: TextStyle(
                  fontSize: 30,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 3
                    ..color = Colors.black,
                ),
              ),

              //Fill text
              Text(
                'Hey there!',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
