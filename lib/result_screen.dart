import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  // ignore: non_constant_identifier_names
  List<Map<String, Object>> get SummaryData {
    //getter method
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }

    return summary;
  }

  // final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    final summaryData = SummaryData;
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where(
          (data) =>
              data['user_answer'] == data['correct_answer'], //arrow function
        )
        .length; //where() doesnt change the original list

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 2, 27, 253),
              ),
              icon: const Icon(Icons.refresh_sharp),
              label: const Text(
                'Restart Quiz!',
                style: TextStyle(fontSize: 20),
              ), //changes to label becuase of icon const
            ),
          ],
        ),
      ),
    );
  }
}
