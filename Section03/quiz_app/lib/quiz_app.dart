import 'package:flutter/material.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 300,
                color: const Color.fromARGB(50, 255, 255, 255),
              ),
              SizedBox(height: 20),
              Text(
                'Learn Flutter the fun way!',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              SizedBox(height: 20),
              OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepPurpleAccent,
                ),
                label: Text('Start Quiz'),
                icon: Icon(Icons.arrow_right_alt),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
