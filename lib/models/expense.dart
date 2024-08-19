import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

// create a unique id for each expense with the help of the uuid package.
const uuid = Uuid();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.fastfood,
  Category.travel: Icons.flight,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  // Constructor
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
  // Properties
  final String id;
  final String title;
  final double amount; // 1.99
  final DateTime date;
  final Category category;

  // Methods
  String get formattedDate {
    return formatter.format(date);
  }
}
