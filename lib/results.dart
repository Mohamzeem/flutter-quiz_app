import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  final VoidCallback t;
  final int resultScore;
  // ignore: use_key_in_widget_constructors
  const Result(this.t, this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 80) {
      resultText = 'You Are Bad';
    } else if (resultScore <= 100) {
      resultText = 'You Are Good';
    } else if (resultScore <= 120) {
      resultText = 'You Are Awesome';
    } else {
      resultText = 'You Are Excellent';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Your Score $resultScore',
          style: TextStyle(
            fontSize: 35,
            color: isSwitched == true ? Colors.black : Colors.white,
          ),
        ),
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 35,
            color: isSwitched == true ? Colors.black : Colors.white,
          ),
        ),
        ElevatedButton(
            onPressed: t,
            child: Text('Restart The App',
                style: TextStyle(
                  fontSize: 25,
                  color: isSwitched == true ? Colors.black : Colors.white,
                )))
      ],
    ));
  }
}
