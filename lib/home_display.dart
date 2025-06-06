import 'package:flutter/material.dart';

class HomeDisplay extends StatelessWidget {
  const HomeDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png', width: 350),
        const SizedBox(height: 40),
        Text(
          'Learn Flutter the fun way',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        const SizedBox(height: 40),
        OutlinedButton(
          onPressed: () {
            print('quiz started');
          },
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.all(25),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 20),
          ),
          child: Text('start quiz'),
        ),
      ],
    );
  }
}
