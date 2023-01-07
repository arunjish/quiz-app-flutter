import 'package:awesome_flutter_app/quiz.dart';
import 'package:flutter/material.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': 'what\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'White', 'score': 3},
        {'text': 'Red', 'score': 1},
      ]
    },
    {
      'questionText': 'what\'s your favorite place?',
      'answers': [
        {'text': 'Dubai', 'score': 10},
        {'text': 'Goa', 'score': 5},
        {'text': 'Kerala', 'score': 3},
        {'text': 'Kashmir', 'score': 1},
      ]
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'cat', 'score': 5},
        {'text': 'monkey', 'score': 3},
        {'text': 'tiger', 'score': 1},
      ]
    },
  ];

  var _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(score) {
    _totalScore += score;
    setState(() {
      ++_questionIndex;
    });

    print(
      'Answer chosen! ${_questionIndex}',
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First app'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: questions,
                questionIndex: _questionIndex,
              )
            : Result(
                totalScore: _totalScore,
                resetQuizHandler: _resetQuiz,
              ),
      ),
    );
  }
}
