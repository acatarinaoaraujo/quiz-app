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
            scoreText.toString(),
            style: TextStyle(
                fontSize: 26,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w800),
            textAlign: TextAlign.right,
          ),
          Icon(
            Icons.diamond_sharp,
            color: Colors.amber,
            size: 26.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        ],
      ),
    );
  }
}
