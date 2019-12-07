import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function resetQuiz;

  Result(this.result, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (result > 12)
      resultText = 'You are awesome and innocent!';
    else if (result <= 12)
      resultText = 'Pretty Likable!';
    else if (result <= 8)
      resultText = 'You are different!';
    else
      resultText = 'You are bad.';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
