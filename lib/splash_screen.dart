import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/png.png',
            width: 300,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Quiz X App",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 54, 54, 54),
            ),
            icon: const Icon(Icons.arrow_forward_ios),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
