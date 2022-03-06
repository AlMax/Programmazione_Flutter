import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyAppTest());

class MyAppTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyAppTest> {
  var _qIndex = 0;
  var _totalScore = 0;
  final _questions = 
  [
    {
      'questionText': 'Favuorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 2},
      ]
    },
    {
      'questionText': 'Favuorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 6},
        {'text': 'Cat', 'score': 9},
        {'text': 'Dragon', 'score': 10},
      ]
    },
    {
      'questionText': 'Favuorite city?',
      'answers': [
        {'text': 'Milan', 'score': 10},
        {'text': 'Rome', 'score': 8},
        {'text': 'Naples', 'score': 1},
        {'text': 'Paris', 'score': 5},
      ]
    },
  ];

  void answerQ(int score) {
    setState(() {
      _qIndex += 1;
      _totalScore += score;
    });
    print("index " + _qIndex.toString());
    print('Answer chosen!');
  }

  void homePage() {
    setState(() {
      _qIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: RaisedButton(onPressed: homePage, child: Text('My testing App')),
        ),
        body: _qIndex < _questions.length ? 
          Quiz(questions: _questions, qIndex: _qIndex, answerQ: answerQ) 
          : 
          Result(totalScore: _totalScore),
      )
    );
  }
}
