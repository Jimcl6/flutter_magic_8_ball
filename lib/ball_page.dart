import 'package:flutter/material.dart';

import 'package:magic_8_ball_flutter/ball_controller.dart';

import 'package:google_fonts/google_fonts.dart';

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          title: Text(
            'Ask Me Anything',
            style: GoogleFonts.aBeeZee(
              fontWeight: FontWeight.w600,
              letterSpacing: 3,
            ),
          ),
        ),
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromRGBO(0, 27, 135, 1),
                  Color.fromRGBO(1, 36, 176, 1),
                ],
              ),
            ),
            child: const Center(child: Ball())),
      ),
    );
  }
}
