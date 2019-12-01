import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  var _questions = [
    "What\'s your name?",
    "What is your age?",
  ];
  void _changeIndex() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My new App'),
          ),
          body: Column(
            children: <Widget>[
              Question(_questions.elementAt(_questionIndex)),
              RaisedButton(
                child: Text('button1'),
                onPressed: _changeIndex,
              ),
              RaisedButton(
                child: Text('button2'),
                onPressed: _changeIndex,
              ),
              RaisedButton(
                child: Text('button3'),
                onPressed: _changeIndex,
              ),
            ],
          )),
    );
  }
}
