import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;

  final VoidCallback resetQuizHandler;
  const Result({
    @required this.totalScore,
    @required this.resetQuizHandler,
  });

  String get resultPhrase {
    var resultPhrase;

    if (this.totalScore < 8) {
      resultPhrase = 'You are awesome';
    } else if (this.totalScore < 16) {
      resultPhrase = 'you are good';
    } else {
      resultPhrase = 'you are bad';
    }
    return resultPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(onPressed: resetQuizHandler, child: Text('Reset!'))
        ],
      ),
    );
  }
}
