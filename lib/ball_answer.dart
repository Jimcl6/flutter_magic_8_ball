import 'package:flutter/material.dart';

import 'dart:math';

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void ballAnswer() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          ballAnswer();
        },
        child: Expanded(child: Image.asset('images/ball$ballNumber.png')));
  }
}
