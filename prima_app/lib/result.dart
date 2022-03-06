import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result({@required this.totalScore});

  String get finishPhrase {
    return 'Finished!\n';
  }

  String get pointsPhrase {
    return 'You did:' + this.totalScore.toString() + " points.";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: 
        Text(
          finishPhrase + pointsPhrase, 
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold), 
          textAlign: TextAlign.center
        )
    );
  }
}
