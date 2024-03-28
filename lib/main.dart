import 'package:flutter/material.dart';
import 'package:module_one/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Colors.deepPurple,
                Colors.deepPurpleAccent
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            ),

          ) ,
          child: const StartScreen(),
      ),
    ),
  ));
}
