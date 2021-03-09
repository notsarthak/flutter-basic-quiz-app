import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultText {
    String resultText;
    if (totalScore <= 12) {
      resultText = "You are really awesome & innocent";
    } else if (totalScore <= 14) {
      resultText = "Pretty likeable!";
    } else {
      resultText = "You are evil!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(resultText,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
        ),
        FlatButton(
          onPressed: resetQuiz,
          child: Text("RESTART QUIZ"),
          textColor: Colors.blue,
        )
      ],
    );
  }
}
