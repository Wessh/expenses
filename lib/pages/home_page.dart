import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final title;
  const HomePage({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: const [
          SizedBox(
            width: double.infinity,
            child: Card(
              child: Center(child: Text('Gráficos',)),
              elevation: 3,
            ),
          ),
          Card(
            child: Text('Despesas'),
          )
        ],
      )
    );
  }
}
