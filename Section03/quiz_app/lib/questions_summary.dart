import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Text(((data['question_index'] as int) + 1).toString()),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['question'] as String),
                      Text('Your answer: ${data['user_answer']}'),
                      Text('Correct answer: ${data['correct_answer']}'),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
