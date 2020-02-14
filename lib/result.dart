import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totScore;
  final Function resetQuiz;
  Result(this.totScore,this.resetQuiz);
  String get getScore{
    return 'Done! \n%${totScore}';
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            getScore,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: resetQuiz,
          ),
        ],
      ),
    );
  }
}
