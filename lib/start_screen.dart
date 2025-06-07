import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: Colors.purple[100],
        ),
        SizedBox(height: 40),
        Text(
          'Learn Flutter the fun way',
          style: GoogleFonts.lato(
            color: Colors.purple[50],
            fontSize: 24,
          ),
        ),
        SizedBox(height: 40),
        OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
            label: const Text('start quiz'))
      ],
    ));
  }
}
