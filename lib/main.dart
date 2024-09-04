import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(scaffoldBackgroundColor: Colors.red),
      home: const Expenses(),
    ),
  );
}
