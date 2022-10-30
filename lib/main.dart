import 'package:flutter/material.dart';

import 'quiz.dart';
import 'results.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

bool isSwitched = false;

class _MyAppState extends State<MyApp> {
  int _questionsIndex = 0;
  int _totalScore = 0;

  void restartQuiz() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
    });
  }

  answerQuestions(int score) {
    setState(() {
      _totalScore += score;
      _questionsIndex += 1;
    });
  }

  final List<Map<String, Object>> _question = [
    {
      'questionsText': 'What\'s Your Favorite Color?',
      'answersText': [
        {'text': 'Red', 'score': 20},
        {'text': 'Blue', 'score': 25},
        {'text': 'Black', 'score': 30},
        {'text': 'White', 'score': 35},
      ]
    },
    {
      'questionsText': 'What\'s Your Favorite Animal?',
      'answersText': [
        {'text': 'Lion', 'score': 20},
        {'text': 'Cheetah', 'score': 25},
        {'text': 'Crocodile', 'score': 30},
        {'text': 'Elephant', 'score': 35},
      ]
    },
    {
      'questionsText': 'What\'s Your Favorite Food?',
      'answersText': [
        {'text': 'Molokhia', 'score': 20},
        {'text': 'Lazania', 'score': 25},
        {'text': 'Kabsa', 'score': 30},
        {'text': 'Ta3mia', 'score': 35},
      ]
    },
    {
      'questionsText': 'What\'s Your Favorite Football Player?',
      'answersText': [
        {'text': 'Cristiano Ronaldo', 'score': 20},
        {'text': 'Messi', 'score': 25},
        {'text': 'Bele', 'score': 30},
        {'text': 'Maradona', 'score': 35},
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              '       Quiz App',
              style: TextStyle(
                  fontSize: 25,
                  color: isSwitched == false ? Colors.black : Colors.white),
            ),
          ),
          actions: [
            Switch(
                activeColor: Colors.white,
                activeTrackColor: Colors.black,
                inactiveThumbColor: Colors.black,
                inactiveTrackColor: Colors.white,
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                })
          ],
        ),
        body: Container(
          color: isSwitched == false ? Colors.black : Colors.white,
          child: _questionsIndex < _question.length
              ? Quiz(_question, _questionsIndex, answerQuestions)
              : Result(restartQuiz, _totalScore),
        ),
      ),
    );
  }
}
