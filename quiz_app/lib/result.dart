import 'dart:ffi';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  List<String> get resultPhrase {
    String resultText;
    int isFeedbackPositive;
    if (resultScore <= 70) {
      resultText = 'You need to practice more!';
      isFeedbackPositive = 0;
    } else if (resultScore <= 80) {
      resultText = 'You did well!';
      isFeedbackPositive = 1;
    } else if (resultScore <= 90) {
      resultText = 'You did very well!';
      isFeedbackPositive = 1;
    } else {
      resultText = 'Congratulations, you did great!';
      isFeedbackPositive = 1;
    }
    return [resultText, isFeedbackPositive.toString()];
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 200.0,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: int.parse(resultPhrase[1]) == 0
              ? Color.fromARGB(255, 160, 73, 67)
              : Color.fromARGB(255, 70, 166, 73),
          border: Border.all(
            color: Color.fromARGB(156, 117, 149, 226),
            width: 8,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Text(
              resultPhrase[0],
              style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your final score: " + resultScore.toString() + " ",
                  style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Icon(
                  int.parse(resultPhrase[1]) == 0
                      ? Icons.thumb_down
                      : Icons.thumb_up,
                  color: int.parse(resultPhrase[1]) == 0
                      ? Color.fromARGB(255, 237, 72, 60)
                      : Color.fromARGB(255, 75, 244, 81),
                  size: 30.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ],
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text(
                'Restart Quiz!',
              ),
              textColor: Colors.blue,
              color: Colors.white,
              onPressed: resetHandler,
            ),
          ],
        ),
      ),
    );
  }
}
