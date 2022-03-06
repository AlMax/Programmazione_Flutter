import 'package:Expense_app/models/transaction.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget{
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transactions.isEmpty ? 
      Column(children: <Widget>[
        Text(
          'No transactions',
          style: Theme.of(context).textTheme.headline6
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 200,
          child: Image.asset(
            'assets/images/waiting.png', 
            fit: BoxFit.cover
          ),
        )
      ]) 
      : ListView.builder(
        itemBuilder: (ctx, index) { 
          return Card(
            elevation:  5,
            margin: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: FittedBox(
                    child: Text('${transactions[index].amount.toStringAsFixed(2)}€'),
                  ),
                )
              ),
              title: Text(
                transactions[index].title, 
                style: Theme.of(context).textTheme.headline6
              ),
              subtitle: Text(
                DateFormat.d().format(transactions[index].date) + '/' + DateFormat.MMM().format(transactions[index].date) + '/' + DateFormat.y().format(transactions[index].date), 
                style: Theme.of(context).textTheme.headline6
              ),
            ),
          );


          // return Card(
          //   child: Row(
          //     children: <Widget>[
          //       Container(
          //         margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          //         decoration: BoxDecoration(
          //           border: Border.all(
          //             color: Theme.of(context).primaryColor,
          //             width: 2,
          //           )
          //         ),
          //         padding: EdgeInsets.all(10),
          //         child: Text(
          //           '${transactions[index].amount.toStringAsFixed(2)}€',
          //           style: TextStyle(
          //             fontWeight: FontWeight.bold,
          //             fontSize: 15,
          //             color: Theme.of(context).primaryColor
          //           ),
          //         ),
          //       ),

          //       Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: <Widget>[
          //           Text(
          //             transactions[index].title, 
          //             style: Theme.of(context).textTheme.title
          //           ),
          //           Text(
          //             DateFormat.yMMMMEEEEd('it').format(transactions[index].date) + ' alle ' + DateFormat.jms('it').format(transactions[index].date), 
          //             style: TextStyle(fontSize: 12)
          //           ),
          //         ]
          //       ),
          //     ],
          //   ),
          // );
        },
        itemCount: transactions.length,
      ),
    );
  }
}