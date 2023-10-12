import 'package:flutter/material.dart';

import 'dart:math';

import 'package:google_fonts/google_fonts.dart';

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Image.asset('images/ball$ballNumber.png'),
        )),
        const SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
          onPressed: () {
            ballAnswer();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Know my Answer".toUpperCase(),
              style: GoogleFonts.rokkitt(
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 80.0,
        )
      ],
    );
  }
}
