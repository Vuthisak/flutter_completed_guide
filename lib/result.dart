import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScores;
  final Function() resetHandler;

  Result(this.resultScores, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScores <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScores <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScores <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
