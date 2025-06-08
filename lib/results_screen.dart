import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});

  final void Function() onRestart;
  List<String> chosenAnswers = [];

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();

    final totalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You answered $numCorrectQuestions out of $totalQuestions questions correctly!',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 10),
              QuestionSummary(summaryData),
              SizedBox(height: 10),
              TextButton.icon(
                onPressed: onRestart,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(
                  Icons.refresh,
                  color: Colors.white,
                ),
                label: const Text('Restart Quiz!'),
              ),
            ],
          ),
        ));
  }
}
