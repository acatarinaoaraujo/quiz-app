import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 70) {
      resultText = 'You need to practice more!';
    } else if (resultScore <= 80) {
      resultText = 'You did well!';
    } else if (resultScore <= 90) {
      resultText = 'You did very well!';
    } else {
      resultText = 'Congratulations, you did great!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 120.0,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              child: Text(
                'Restart Quiz!',
              ),
              textColor: Colors.white,
              onPressed: resetHandler,
            ),
            Icon(
              Icons.diamond_sharp,
              color: Colors.amber,
              size: 30.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
          ],
        ),
      ),
    );
  }
}
