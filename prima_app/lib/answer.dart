import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final VoidCallback selectHandler;

  Answer(this.text, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          onPressed: selectHandler,
          child: Text(this.text),
          color: Colors.blue,
          textColor: Colors.white),
    );
  }
}
