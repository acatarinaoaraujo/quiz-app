import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText':
          'What is the worst case time complexity of linear search algorithm?',
      'answers': [
        {'text': 'O(1)', 'score': 0},
        {'text': 'O(n)', 'score': 0},
        {'text': 'O(log n)', 'score': 0},
        {'text': 'O(n^2)', 'score': 10},
      ],
    },
    {
      'questionText':
          'What data structure is used for depth first traversal of a graph?',
      'answers': [
        {'text': 'Queue', 'score': 0},
        {'text': 'Stack', 'score': 10},
        {'text': 'List', 'score': 0},
        {'text': 'None of the above', 'score': 0},
      ],
    },
    {
      'questionText':
          'Minimum number of moves required to solve a Tower of Hanoi puzzle is',
      'answers': [
        {'text': '2n^2', 'score': 0},
        {'text': '2^(n-1)', 'score': 0},
        {'text': '2^(n)-1', 'score': 10},
        {'text': '2n-1', 'score': 0},
      ],
    },
    {
      'questionText':
          'If the array is already sorted, which of these algorithms will exhibit the best performance',
      'answers': [
        {'text': 'Merge Sort', 'score': 0},
        {'text': 'Insertion Sort', 'score': 10},
        {'text': 'Quick Sort', 'score': 0},
        {'text': 'Heap Sort', 'score': 0},
      ],
    },
    {
      'questionText':
          'Which method can find if two vertices x & y have path between them?',
      'answers': [
        {'text': 'Depth First Search', 'score': 0},
        {'text': 'Breadth First Search', 'score': 0},
        {'text': 'Both A & B', 'score': 10},
        {'text': 'None of them', 'score': 0},
      ],
    },
    {
      'questionText':
          'How many swaps are required to sort the given array using bubble sort - { 2, 5, 1, 3, 4}',
      'answers': [
        {'text': '4', 'score': 10},
        {'text': '5', 'score': 0},
        {'text': '6', 'score': 0},
        {'text': '7', 'score': 0},
      ],
    },
    {
      'questionText': 'Index of arrays in C programming langauge starts from',
      'answers': [
        {'text': '0', 'score': 10},
        {'text': '1', 'score': 0},
        {'text': 'either 0 or 1', 'score': 0},
        {'text': 'undefined', 'score': 0},
      ],
    },
    {
      'questionText': 'In a min heap',
      'answers': [
        {'text': 'Minimum values are stored.', 'score': 0},
        {'text': 'Child nodes have less value than parent nodes.', 'score': 0},
        {'text': 'Parent nodes have less value than child nodes.', 'score': 10},
        {'text': 'Maximum value is contained by the root node.', 'score': 0},
      ],
    },
    {
      'questionText': 'Shel sort uses',
      'answers': [
        {'text': 'Insertion Sort', 'score': 10},
        {'text': 'Merge Sort', 'score': 0},
        {'text': 'Selection Sort', 'score': 0},
        {'text': 'Quick Sort', 'score': 0},
      ],
    },
    {
      'questionText':
          'Interpolation search is an improved variant of binary search. It is necessary for this search algorithm to work that −',
      'answers': [
        {
          'text':
              'Data collection should be in  sorted form and equally distributted.',
          'score': 10
        },
        {
          'text':
              'Data collection should be in sorted form but not equally distributed.',
          'score': 0
        },
        {
          'text':
              'Data collection should be equally distributed but not sorted.',
          'score': 0
        },
        {'text': 'None of the above.', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(68, 104, 187, 20),
        appBar: AppBar(
          title: Text('Data Structure Quizlet'),
          backgroundColor: Color.fromRGBO(68, 104, 187, 20),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
                scoreSum: _totalScore,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
