import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final int scoreText;

  Score(this.scoreText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'SCORE: ',
            style: TextStyle(
                fontSize: 22,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
          Text(
            scoreText.toString(),
            style: TextStyle(
                fontSize: 28,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
          Icon(
            Icons.diamond_sharp,
            color: Colors.amber,
            size: 30.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        ],
      ),
    );
  }
}
