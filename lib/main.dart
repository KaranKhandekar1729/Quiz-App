import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp( //doesnt really display anything
      home: Scaffold( //argument: home widget, to setup the screen
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 252, 3, 140),
                Color.fromARGB(255, 249, 4, 184)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
