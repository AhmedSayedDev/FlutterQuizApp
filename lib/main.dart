import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=> _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'QusTxt': 'What\'s your favorite color?',
      'Answers': [
        {'AnsTxt':'Black', 'Score':0},
        {'AnsTxt':'Blue', 'Score':20},
        {'AnsTxt':'Red', 'Score':0},
        {'AnsTxt':'White', 'Score':0},
      ],
    },
    {
      'QusTxt': 'What is your favorite hobby',
      'Answers': [
        {'AnsTxt':'Swimming', 'Score':0},
        {'AnsTxt':'Football', 'Score':0},
        {'AnsTxt':'Sleeping :)', 'Score':20},
        {'AnsTxt':'Reading', 'Score':0},
      ],
    },
    {
      'QusTxt': 'What\'s your favorite Animal?',
      'Answers': [
        {'AnsTxt':'Rabbet', 'Score':0},
        {'AnsTxt':'Monkey :)', 'Score':20},
        {'AnsTxt':'Dog', 'Score':0},
        {'AnsTxt':'Cat', 'Score':0},
      ],
    },
    {
      'QusTxt': 'What\'s your native language?',
      'Answers': [
        {'AnsTxt':'English', 'Score':20},
        {'AnsTxt':'Arabic ', 'Score':0},
        {'AnsTxt':'Germany ', 'Score':0},
        {'AnsTxt':'French', 'Score':0},
      ],
    },
    {
      'QusTxt': 'Which Company you like?',
      'Answers': [
        {'AnsTxt':'Apple', 'Score':0},
        {'AnsTxt':'Google ', 'Score':0},
        {'AnsTxt':'Facebook ', 'Score':0},
        {'AnsTxt':'Huawei', 'Score':20},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore =0;
  
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
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
