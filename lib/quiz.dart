import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/splash_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'splash-screen';

  switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(159, 21, 57, 176),
                Color.fromARGB(199, 5, 134, 255)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen == 'start-screen' 
                ? SplashScreen(switchScreen) 
                : const QuestionsScreen(), //ternary expression 
        ),
      ),
    );
  }
}
