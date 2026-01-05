import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

String text = 'Hello World!!!';
List<Color> gradientColors = [Colors.deepPurple, Colors.deepPurpleAccent];
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: LinearGradientContainer(gradientColors, text),
      ),
    ),
  );
}
