import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';
import 'answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionsIndex;
  final Function(int score) answerQuestions;

  // ignore: use_key_in_widget_constructors
  const Quiz(this.question, this.questionsIndex, this.answerQuestions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 30),
          child: Question(question[questionsIndex]['questionsText'] as String),
        ),
        ...(question[questionsIndex]['answersText']
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestions(int.parse(answer['score'].toString())),
              answer['text'].toString());
        }).toList(),
      ],
    );
  }
}
