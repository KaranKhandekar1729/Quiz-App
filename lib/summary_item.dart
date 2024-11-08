import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.data, {super.key});

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    final ifAnswerCorrect = data['user_answer'] == data['correct_answer'];
    return Container(
      width: 500,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: ifAnswerCorrect ? Colors.green[100] : Colors.red[100],
        borderRadius: BorderRadius.circular(10), 
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Q${(data['question_index'] as int) + 1}: ${data['question']}',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
            ),
          Text(
            'Your answer: ${data['user_answer']}',
            style: TextStyle(
              fontSize: 14,
              color: ifAnswerCorrect ? Colors.green : Colors.red,
            ),
          ),
          Text(
            'Correct answer: ${data['correct_answer']}',
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
