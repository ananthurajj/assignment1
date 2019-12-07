import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }
  void _changeIndex(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('We have no more questions');
    }
  }

  final _questions = const [
    {
      "questionText": "What\'s your name?",
      "answers": [
        {"text": 'Ananthu', "score": 3},
        {"text": 'Basil', "score": 2},
        {"text": 'Eldhose', "score": 1},
      ],
    },
    {
      "questionText": "What is your age?",
      "answers": [
        {"text": "20", "score": 1},
        {"text": "22", "score": 2},
        {"text": "24", "score": 3},
        {"text": "25", "score": 5},
        {"text": "27", "score": 4},
      ],
    },
    {
      "questionText": "What is your favourite color?",
      "answers": [
        {"text": "red", "score": 5},
        {"text": "yellow", "score": 4},
        {"text": "blue", "score": 3},
        {"text": "grey", "score": 2},
        {"text": "black", "score": 1},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My new App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_changeIndex, _questions, _questionIndex)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
