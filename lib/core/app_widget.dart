import 'package:expenses/core/app_colors.dart';
import 'package:flutter/material.dart';

import '../pages/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense App',
      theme: ThemeData(
        primarySwatch: createMaterialColor(AppColors.primaryColor),
        scaffoldBackgroundColor: AppColors.backgroundColor,
        cardColor: AppColors.secondaryColor,
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: AppColors.textColor)
        )
      ),
      home: HomePage(title: 'Expense App',),
    );
  }
}
