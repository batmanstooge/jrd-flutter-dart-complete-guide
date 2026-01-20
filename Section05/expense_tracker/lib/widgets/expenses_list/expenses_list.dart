import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

typedef OnDismissExpense = void Function(Expense expense);

class ExpensesList extends StatelessWidget {
  final List<Expense> expenses;
  final OnDismissExpense? onDismiss;

  const ExpensesList({super.key, required this.expenses, this.onDismiss});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) {
        final expense = expenses[index];
        return Dismissible(
          key: ValueKey(expense.title + expense.date.toIso8601String()),
          direction: DismissDirection.endToStart,
          background: Container(
            color: Colors.red,
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Icon(Icons.delete, color: Colors.white),
          ),
          onDismissed: (direction) {
            if (onDismiss != null) {
              onDismiss!(expense);
            }
          },
          child: ExpenseItem(expense: expense),
        );
      },
    );
  }
}
