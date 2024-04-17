import 'package:flutter/material.dart';
import 'package:third_test/models/expense.dart';
import 'package:third_test/widgets/expenses_list/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(title: 'Porn',
      amount: 9.99,
      date: DateTime.now(),
      category: Category.food
    ),
      Expense(title: 'Game',
      amount: 49.99,
      date: DateTime.now(),
      category: Category.leisure
    ),
  ];

  void _openAddExpenseOverlay(){
    showModalBottomSheet(context: context, builder: (ctx) =>  Text('Modal bottom sheet')
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add)
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('cnm'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}
