import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget{
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleContr = TextEditingController();

  final amountContr = TextEditingController();

  void submitData(){
    final inTitle = titleContr.text;
    final inAmount = double.parse(amountContr.text);

    if( inTitle.isEmpty || inAmount <= 0 ){
      return;
    }

    // print('Title: ' + titleContr.text);
    // print('Amount: ${amountContr.text}€');
    widget.addTx(inTitle, inAmount);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleContr,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountContr,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData,
            ),
            TextButton(
              child: Text('Add Transaction',
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
              onPressed: submitData,
            )
          ],
        )
      )
    );
  }
}