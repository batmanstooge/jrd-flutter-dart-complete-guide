import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  @override
  _ExpensesState createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Expenses chart will be here'),
          Text('Expenses list will be here'),
        ],
      ),
    );
  }
}
