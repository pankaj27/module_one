import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),

        ),
        // Opacity(
        //     opacity: 0.5,
        //     child: Image.asset(
        //   'assets/images/quiz-logo.png',
        //   width: 200,
        // )),
        const SizedBox(
          height: 80,
        ),
        const Text(
          'Learn Flutter the Fun way',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(Icons.arrow_right_alt_outlined),
            label: const Text('Start Quize'))
      ],
    ));
  }
}
