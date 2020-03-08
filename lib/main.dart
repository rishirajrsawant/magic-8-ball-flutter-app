import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MagicBall(),
  );
}

class MagicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigoAccent.shade100,
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: Text(
            'Ask Me Anything',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontFamily: 'Sans-Serif'),
          ),
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ballNum = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ballNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
