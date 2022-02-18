import 'package:flutter/material.dart';

class ExpenseCardWidget extends StatelessWidget {
  final title;
  final DateTime date;
  final value;
  final id;

  const ExpenseCardWidget({Key? key, required this.title, required this.date, required this.value, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newDate = date.day.toString() +'/'+ date.month.toString() +'/'+ date.year.toString();
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
                value.toString(),
            style: const TextStyle(
              color: Colors.red,
            ),),
          //Icon(Icons.attach_money),
        ),
        Column(
          children: [
            Text(
              title.toString()),
            Text(
              newDate
            ),
          ],
        ),
      ],
    );
  }
}
