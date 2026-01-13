import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expenses;

  const ExpensesList({super.key, required this.expenses});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length, // Replace with actual item count
      itemBuilder: (ctx, index) {
        return Text(expenses[index].title); // Replace with actual item widget
      },
    );
  }
}
