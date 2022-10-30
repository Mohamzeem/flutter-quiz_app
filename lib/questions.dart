import 'package:flutter/material.dart';

import 'main.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
          color: isSwitched == true ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}
