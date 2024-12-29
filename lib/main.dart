import 'package:flutter/material.dart';
import 'package:quiz/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
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
          child: const SplashScreen(),
        ),
      ),
    ),
  );
}
