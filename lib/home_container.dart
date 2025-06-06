import 'package:flutter/material.dart';

import 'home_display.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [
            Colors.green,
            Colors.deepPurple
          ],
        ),
      ),
      child: Center(
        child: HomeDisplay(),
      ),
    );
  }
}