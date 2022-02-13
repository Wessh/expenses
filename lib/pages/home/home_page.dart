import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final title;
  final _transaction = [
    Transaction(
        id: '1',
        name: 'Galão de água',
        value: '6',
        date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      name: 'Lanche',
      value: '42.97',
      date: DateTime.now(),
    )
  ];
  HomePage({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            child: Card(
              child: Text('Gráficos',),
              elevation: 3,
            ),
          ),
          Column(
            children: _transaction.map((tr) =>
                Card(
                  child:
                  Text(tr.name),
                )).toList(),
          ),
        ],
      )
    );
  }
}
