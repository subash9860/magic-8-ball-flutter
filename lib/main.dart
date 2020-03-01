
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Ballpage(),
    ),
  );
}
class Ballpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[900],
        ),
        body: Ball(),
      );
  }
}
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int n = 1;
  void change() {
    setState(() {
      n = Random().nextInt(5) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                change();
              },
              child: Image.asset('images/ball$n.png'),
            ),
          )
        ],
      ),
    );
  }
}
