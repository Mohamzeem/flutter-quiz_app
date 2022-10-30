import 'package:flutter/material.dart';

import 'main.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback x;
  const Answer(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 30),
                elevation: 5,
                onSurface: Colors.black,
                onPrimary: Colors.white),
            onPressed: x,
            child: Text(
              answerText,
              style: TextStyle(
                color: isSwitched == true ? Colors.black : Colors.white,
              ),
            )));
  }
}
