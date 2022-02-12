import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      home: const HomePage(title: 'Expense App',),
    );
  }
}
