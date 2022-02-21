import 'package:expenses/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpenseCardWidget extends StatelessWidget {
  final String title;
  final DateTime date;
  final dynamic value;
  final dynamic id;

  const ExpenseCardWidget({Key? key, required this.title, required this.date, required this.value, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(30)
          ),
          padding: const EdgeInsets.all(10),
          child:
            Text(
                'R\$ $value',
            style: const TextStyle(
              color: AppColors.primaryColor,
            ),),
          //Icon(Icons.attach_money),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title.toString(),style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            Text(
              DateFormat('d/MMM/y').format(date), style: const TextStyle(color: AppColors.variantColor),
            ),
          ],
        ),
      ],
    );
  }
}
